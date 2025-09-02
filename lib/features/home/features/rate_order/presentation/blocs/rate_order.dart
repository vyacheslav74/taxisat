import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/review_parameter.dart';

import '../../domain/repositories/rate_order_repository.dart';

part 'rate_order.event.dart';
part 'rate_order.state.dart';
part 'rate_order.freezed.dart';

@lazySingleton
class RateOrderBloc extends Bloc<RateOrderEvent, RateOrderState> {
  final RateOrderRepository repository;

  RateOrderBloc(this.repository) : super(const RateOrderState.initial()) {
    on<RateOrderEvent>((event, emit) async {
      await event.map(
        onStarted: (e) async {
          emit(const RateOrderState.loading());
          final result = await repository.getReviewParameters();
          await result.fold(
            (l) async => emit(RateOrderState.error(message: l.errorMessage)),
            (r) async {
              emit(RateOrderState.parametersLoaded(
                strengthParameters: r.where((element) => element.isGood).toList(),
                weaknessParameters: r.where((element) => !element.isGood).toList(),
              ));
            },
          );
        },
        onParameterTapped: (value) {
          final state = this.state;
          if (state is ParametersLoaded) {
            List<ReviewParameterEntity> selectedParameters;
            if (state.selectedParameters.contains(value.parameter)) {
              selectedParameters = state.selectedParameters.where((e) => e.id != value.parameter.id).toList();
            } else {
              selectedParameters = state.selectedParameters.followedBy([value.parameter]).toList();
            }
            emit(state.copyWith(selectedParameters: selectedParameters));
          }
        },
        onReviewSubmitted: (value) async {
          emit(const RateOrderState.loading());
          final result = await repository.submitReview(
            orderId: value.orderId,
            rating: value.rating,
            comment: value.comment,
            reviewParameters: value.parameters.map((e) => int.parse(e.id)).toList(),
            isFavorite: value.isFavorite,
          );
          result.fold(
            (l) async => emit(RateOrderState.error(message: l.errorMessage)),
            (r) async => emit(const RateOrderState.reviewSubmitted()),
          );
        },
        skipReview: (value) async {
          emit(const RateOrderState.loading());
          final result = await repository.skipReview(
            orderId: value.orderId,
          );
          result.fold(
            (l) async => emit(RateOrderState.error(message: l.errorMessage)),
            (r) async => emit(const RateOrderState.reviewSubmitted()),
          );
        },
      );
    });
  }

  void onStarted() => add(const RateOrderEvent.onStarted());

  void onParameterTapped(ReviewParameterEntity parameter) => add(RateOrderEvent.onParameterTapped(parameter: parameter));

  void onReviewSubmitted({
    required String orderId,
    required int rating,
    required List<ReviewParameterEntity> parameters,
    required String? comment,
    required bool isFavorite,
  }) =>
      add(
        RateOrderEvent.onReviewSubmitted(
          orderId: orderId,
          rating: rating,
          comment: comment,
          parameters: parameters,
          isFavorite: rating > 4 ? isFavorite : false,
        ),
      );

  void skipReview({required String orderId}) => add(RateOrderEvent.skipReview(orderId: orderId));
}
