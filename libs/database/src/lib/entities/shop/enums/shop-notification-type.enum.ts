import { registerEnumType } from '@nestjs/graphql';

export enum ShopNotificationType {
  NewOrder = 'new_order',
  OrderStatus = 'order_status',
  Announcement = 'announcement',
  PayoutCalculation = 'payout_calculation',
  PayoutProcessing = 'payout_processing',
  PayoutCompleted = 'payout_completed',
  PayoutFailed = 'payout_failed',
  UpdateAvailable = 'update_available',
  MandatoryUpdate = 'mandatory_update',
  Maintenance = 'maintenance',
  PaymentReceived = 'payment_received',
  RefundInitiated = 'refund_initiated',
  RefundCompleted = 'refund_completed',
  StockRunningLow = 'stock_running_low',
  ReturnRequested = 'return_requested',
  ShippingDelayed = 'shipping_delayed',
  SupportRequestCreated = 'support_request_created',
  SupportRequestReply = 'support_request_reply',
  SupportRequestClose = 'support_request_close',
  ShopFeedback = 'shop_feedback',
}

registerEnumType(ShopNotificationType, {
  name: 'ShopNotificationType',
  description: 'The type of shop notification',
});
