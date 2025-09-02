import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:rider_flutter/core/entities/order.dart';

import '../../domain/repositories/track_order_repository.dart';

part 'track_order.event.dart';
part 'track_order.state.dart';
part 'track_order.models.dart';
part 'track_order.freezed.dart';
part 'track_order.g.dart';

@lazySingleton
class TrackOrderBloc extends Bloc<TrackOrderEvent, TrackOrderState> {
  final TrackOrderRepository repository;
  Stream<(OrderEntity, DriverLocation?)>? orderUpdates;

  TrackOrderBloc(this.repository)
      : super(
          const TrackOrderState.initial(),
        ) {
    on<TrackOrderEvent>((event, emit) async {
      await event.map(
        onStarted: (onStarted) async {
          final initialState = TrackOrderState.orderInProgres(
            order: onStarted.order,
            driverLocation: onStarted.driverLocation,
            page: const TrackOrderPage.overview(),
          );
          emit(initialState);
          if (orderUpdates == null) {
            orderUpdates = repository.listenToOrderUpdates(orderEntity: onStarted.order);
            await emit.forEach(
              orderUpdates!,
              onData: (order) {
                if (order.$1.status.viewMode == OrderStatusViewMode.finished) {
                  return const TrackOrderState.done();
                }
                return state.maybeMap(
                  orElse: () => throw Exception('Invalid state'),
                  orderInProgres: (value) => value.copyWith.call(
                    order: order.$1,
                    driverLocation: order.$2,
                  ),
                );
              },
            );
          }
        },
        cancelRide: (_CancelRide value) async {
          final result = await repository.cancelOrder(
            orderId: state.maybeMap(
              orderInProgres: (inProgress) => inProgress.order.id,
              orElse: () => throw Exception("Invalid state"),
            ),
            cancelReasonId: value.cancelReasonId,
            cancelReasonNote: value.cancelReasonNote,
          );
          result.fold(
            (l) {
              emit(
                state.maybeMap(
                  orderInProgres: (inProgress) {
                    return inProgress.copyWith(
                      error: l.errorMessage,
                    );
                  },
                  orElse: () => throw Exception("Invalid state"),
                ),
              );
            },
            (r) => emit(
              const TrackOrderState.done(),
            ),
          );
        },
        changePage: (value) async {
          emit(
            state.maybeMap(
              orderInProgres: (inprogress) => inprogress.copyWith.call(
                page: value.page,
              ),
              orElse: () => throw Exception("Invalid state"),
            ),
          );
        },
        hideChat: (value) async {
          await state.maybeMap(
            orderInProgres: (inProgress) async {
              final result = await repository.updateLastSeenMessages(
                orderId: inProgress.order.id,
              );
              result.fold(
                (l) async => throw Exception(l.errorMessage),
                (r) async => emit(
                  state.maybeMap(
                    orderInProgres: (inProgress) {
                      return inProgress.copyWith(
                        page: const TrackOrderPage.overview(),
                        order: inProgress.order.copyWith(
                          lastSeenMessagesAt: DateTime.now(),
                        ),
                      );
                    },
                    orElse: () => throw Exception("Invalid state"),
                  ),
                ),
              );
            },
            orElse: () => throw Exception("Invalid state"),
          );
        },
        messageSent: (value) async {
          emit(
            state.maybeMap(
              orderInProgres: (inProgress) {
                return inProgress.copyWith(
                  order: inProgress.order.copyWith(
                    chatMessages: [...inProgress.order.chatMessages, value.message],
                  ),
                );
              },
              orElse: () => throw Exception("Invalid state"),
            ),
          );
        },
      );
    });
  }

  onStarted({
    required OrderEntity order,
    required DriverLocation? driverLocation,
  }) =>
      add(
        TrackOrderEvent.onStarted(
          order: order,
          driverLocation: driverLocation,
        ),
      );

  cancelRide({
    required String? cancelReasonId,
    required String? cancelReasonNote,
  }) =>
      add(
        TrackOrderEvent.cancelRide(cancelReasonId: cancelReasonId, cancelReasonNote: cancelReasonNote),
      );

  void showChat() => add(
        const TrackOrderEvent.changePage(TrackOrderPage.chat()),
      );

  void hideChat() => add(
        const TrackOrderEvent.hideChat(),
      );

  void showPayment() => add(
        const TrackOrderEvent.changePage(TrackOrderPage.payment()),
      );

  void showOverview() => add(
        const TrackOrderEvent.changePage(TrackOrderPage.overview()),
      );

  @disposeMethod
  void dispose() {
    close();
  }

  // @override
  // TrackOrderState? fromJson(Map<String, dynamic> json) {
  //   return TrackOrderState.fromJson(json);
  // }

  // @override
  // Map<String, dynamic>? toJson(TrackOrderState state) {
  //   return state.toJson();
  // }
}
