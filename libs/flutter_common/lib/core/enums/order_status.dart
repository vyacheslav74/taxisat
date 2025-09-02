enum OrderStatus {
  requested,
  notFound,
  noCloseFound,
  found,
  driverAccepted,
  arrived,
  waitingForPrePay,
  driverCanceled,
  riderCanceled,
  started,
  waitingForPostPay,
  waitingForReview,
  finished,
  booked,
  expired
}

enum OrderStatusViewMode { looking, waitingForPayment, inProgress, review, finished }

extension OrderStatusX on OrderStatus {
  OrderStatusViewMode get viewMode {
    return switch (this) {
      OrderStatus.requested ||
      OrderStatus.notFound ||
      OrderStatus.noCloseFound ||
      OrderStatus.found =>
        OrderStatusViewMode.looking,
      OrderStatus.waitingForPostPay || OrderStatus.waitingForPrePay => OrderStatusViewMode.waitingForPayment,
      OrderStatus.driverAccepted || OrderStatus.started || OrderStatus.arrived => OrderStatusViewMode.inProgress,
      OrderStatus.waitingForReview => OrderStatusViewMode.review,
      OrderStatus.booked ||
      OrderStatus.driverCanceled ||
      OrderStatus.riderCanceled ||
      OrderStatus.finished ||
      OrderStatus.expired =>
        OrderStatusViewMode.finished,
    };
  }
}

extension OrderStatusViewModeX on OrderStatusViewMode {
  T when<T>({
    required T Function() looking,
    required T Function() waitingForPayment,
    required T Function() inProgress,
    required T Function() review,
    required T Function() finished,
  }) {
    switch (this) {
      case OrderStatusViewMode.looking:
        return looking();
      case OrderStatusViewMode.waitingForPayment:
        return waitingForPayment();
      case OrderStatusViewMode.inProgress:
        return inProgress();
      case OrderStatusViewMode.review:
        return review();
      case OrderStatusViewMode.finished:
        return finished();
    }
  }
}
