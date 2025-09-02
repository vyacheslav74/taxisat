import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/config/test_data/order.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/repositories/track_order_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: TrackOrderRepository)
class TrackOrderRepositoryMock implements TrackOrderRepository {
  @override
  Stream<(OrderEntity, DriverLocation?)> listenToOrderUpdates({
    required OrderEntity orderEntity,
  }) {
    final messages = [
      ChatMessageEntity(
        id: "1",
        message: "Hello, I am close.",
        isSender: false,
        createdAt: DateTime.now(),
      ),
      ChatMessageEntity(
        id: "2",
        message: "I have reached the pickup point",
        isSender: false,
        createdAt: DateTime.now(),
      ),
      ChatMessageEntity(
        id: "3",
        message: "I am waiting for you",
        isSender: false,
        createdAt: DateTime.now(),
      ),
    ];
    final orderStream = orderMocker();
    final driverLocationStream = driverLocationMocker();
    final messageStream = Stream.periodic(
      const Duration(seconds: 10),
      (i) => messages[i % messages.length],
    ).scan(
      (accumulated, value, index) => [
        ...accumulated,
        value,
      ],
      [],
    );
    return Rx.combineLatest3(
      orderStream,
      driverLocationStream,
      messageStream,
      (order, driverLocation, message) {
        order = order.copyWith.call(chatMessages: [
          ...order.chatMessages,
          ...message,
        ]);
        return (
          order,
          driverLocation,
        );
      },
    );
  }

  Stream<OrderEntity> orderMocker() async* {
    const statusOrder = [
      OrderStatus.requested,
      OrderStatus.driverAccepted,
      OrderStatus.arrived,
      OrderStatus.started,
      OrderStatus.waitingForReview,
    ];
    yield orderTest.copyWith(
      status: statusOrder[0],
    );
    await Future.delayed(const Duration(seconds: 5));
    yield orderTest.copyWith(
      status: statusOrder[1],
    );
    await Future.delayed(const Duration(seconds: 10));
    yield orderTest.copyWith(
      status: statusOrder[2],
      arrivedAtWaypointIndex: null,
    );
    await Future.delayed(const Duration(seconds: 5));
    yield orderTest.copyWith(
      status: statusOrder[3],
      startedAt: DateTime.now(),
      arrivedAtWaypointIndex: 0,
    );
    await Future.delayed(const Duration(seconds: 60));
    yield orderTest.copyWith(
      status: statusOrder[4],
      arrivedAtWaypointIndex: 1,
    );
  }

  Stream<DriverLocation> driverLocationMocker() async* {
    await Future.delayed(const Duration(seconds: 5));
    // Driver heading to pickup point
    yield const DriverLocation(lat: 37.384135, lng: -122.067976, rotation: 40);
    await Future.delayed(const Duration(seconds: 2));
    yield const DriverLocation(lat: 37.385207, lng: -122.066095, rotation: 45);
    await Future.delayed(const Duration(seconds: 2));
    yield const DriverLocation(lat: 37.385207, lng: -122.066095, rotation: 65);
    await Future.delayed(const Duration(seconds: 2));
    yield const DriverLocation(lat: 37.385808, lng: -122.063315, rotation: 85);
    await Future.delayed(const Duration(seconds: 2));
    yield const DriverLocation(lat: 37.386246, lng: -122.059677, rotation: 45);
    await Future.delayed(const Duration(seconds: 2));
    // Driver at pickup point
    await Future.delayed(const Duration(seconds: 5));
    // Driver heading to dropoff point
    yield const DriverLocation(lat: 37.390835, lng: -122.052340, rotation: 220);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.385770, lng: -122.064627, rotation: 240);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.386627, lng: -122.068655, rotation: 350);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.394856, lng: -122.068583, rotation: 0);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.400799, lng: -122.069950, rotation: 345);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.409426, lng: -122.070957, rotation: 290);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.416224, lng: -122.085845, rotation: 300);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.422394, lng: -122.091887, rotation: 30);
    await Future.delayed(const Duration(seconds: 5));
    yield const DriverLocation(lat: 37.42203, lng: -122.08417, rotation: 180);
  }

  @override
  Future<Either<Failure, bool>> cancelOrder({
    required String orderId,
    required String? cancelReasonId,
    required String? cancelReasonNote,
  }) async {
    return const Right(true);
  }

  @override
  Future<Either<Failure, List<CancelReasonEntity>>> getCancelReasons() async {
    return const Right([
      CancelReasonEntity(id: "1", name: "Driver didn’t show up ontime"),
      CancelReasonEntity(id: "2", name: "I don’t feel safe"),
      CancelReasonEntity(id: "3", name: "Need to edit my ride details"),
      CancelReasonEntity(id: "4", name: "Don’t need a ride anymore"),
      CancelReasonEntity(id: "5", name: "Other reasons"),
    ]);
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> sendMessage({
    required String orderId,
    required String message,
  }) async {
    return Right(
      ChatMessageEntity(
        id: "1",
        message: message,
        isSender: true,
        createdAt: DateTime.now(),
      ),
    );
  }

  @override
  Future<Either<Failure, void>> sendSOSSignal({
    required String orderId,
  }) async {
    return const Right(null);
  }

  @override
  Future<Either<Failure, List<PaymentMethodUnion>>> getPaymentMethods() async {
    return const Right([
      PaymentMethodUnion.cash(),
    ]);
  }

  @override
  Future<Either<Failure, void>> updateLastSeenMessages({required String orderId}) async {
    return const Right(null);
  }
}
