import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/track_order.graphql.dart';
import 'package:rider_flutter/config/graphql/documents/wallet.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/core/entities/cancel_reason.prod.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:rider_flutter/core/entities/chat_message.prod.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/entities/order.prod.dart';
import 'package:rider_flutter/core/entities/payment_gateway.prod.dart';
import 'package:rider_flutter/core/entities/saved_payment_method.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/extensions/point_fragment.pod.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/repositories/track_order_repository.dart';

@prod
@LazySingleton(as: TrackOrderRepository)
class TrackOrderRepositoryImpl implements TrackOrderRepository {
  final GraphqlDatasource graphQLDatasource;
  final List<ChatMessageEntity> messagesSent = [];

  TrackOrderRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Stream<(OrderEntity, DriverLocation?)> listenToOrderUpdates({
    required OrderEntity orderEntity,
  }) {
    final order = graphQLDatasource
        .subscribe(
          Options$Subscription$OrderUpdateSubsctipion(
            fetchPolicy: FetchPolicy.noCache,
          ),
        )
        .map(
          (event) => event.orderUpdated.toEntity,
        )
        .startWith(orderEntity);
    Stream<DriverLocation?> driverLocation = graphQLDatasource
        .subscribe(
          Options$Subscription$DriverLocationUpdated(
            fetchPolicy: FetchPolicy.noCache,
          ),
        )
        .map(
          (event) => event.driverLocationUpdated.toDriverLocation,
        );
    final messages = graphQLDatasource
        .subscribe(
          Options$Subscription$NewMessageReceived(
            fetchPolicy: FetchPolicy.noCache,
          ),
        )
        .map(
          (event) => event.newMessageReceived.toEntity,
        )
        .scan(
      (accumulated, value, index) => [...accumulated, value],
      [],
    );

    return Rx.combineLatest3(
      order,
      driverLocation.startWith(null),
      messages.startWith([]),
      (
        orderData,
        driverLocationData,
        messageData,
      ) {
        final List<ChatMessageEntity> messages = [
          ...orderData.chatMessages,
          ...messagesSent,
          ...messageData,
        ];
        messages.sortBy((element) => element.createdAt);
        return (
          orderData.copyWith.call(
            chatMessages: messages,
          ),
          driverLocationData,
        );
      },
    );
  }

  @override
  Future<Either<Failure, bool>> cancelOrder({
    required String orderId,
    required String? cancelReasonId,
    required String? cancelReasonNote,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$CancelOrder(
        variables: Variables$Mutation$CancelOrder(
          orderId: orderId,
          cancelReasonId: cancelReasonId,
          cancelReasonNote: cancelReasonNote,
        ),
      ),
    );
    return result.map((r) => true);
  }

  @override
  Future<Either<Failure, List<CancelReasonEntity>>> getCancelReasons() async {
    final result = await graphQLDatasource.query(Options$Query$CancelReasons());
    return result.map((r) => r.toEntity);
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> sendMessage({
    required String orderId,
    required String message,
  }) async {
    final messageEntity = await graphQLDatasource.mutate(
      Options$Mutation$SendMessage(
        variables: Variables$Mutation$SendMessage(
          orderId: orderId,
          message: message,
        ),
      ),
    );
    final messageParsed = messageEntity.map((r) => r.createOneOrderMessage.toEntity);
    messageParsed.fold((l) => null, (r) => messagesSent.add(r));
    return messageParsed;
  }

  @override
  Future<Either<Failure, void>> sendSOSSignal({
    required String orderId,
  }) async {
    final result = await graphQLDatasource.mutate(Options$Mutation$SendSOS(
      variables: Variables$Mutation$SendSOS(
        orderId: orderId,
      ),
    ));
    return result;
  }

  @override
  Future<Either<Failure, List<PaymentMethodUnion>>> getPaymentMethods() async {
    final result = await graphQLDatasource.query(
      Options$Query$SavedPaymentMethods(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return result.map((r) {
      final savedPaymentMethods = r.savedPaymentMethods.toEntity;
      final paymentGateways = r.paymentGateways.toEntity;
      return (paymentGateways, savedPaymentMethods).toPaymentMethodUnion;
    });
  }

  @override
  Future<Either<Failure, void>> updateLastSeenMessages({required String orderId}) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$UpdateLastSeenMessages(
        variables: Variables$Mutation$UpdateLastSeenMessages(
          orderId: orderId,
        ),
      ),
    );
    return result;
  }
}
