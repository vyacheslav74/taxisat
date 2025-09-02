import { registerEnumType } from '@nestjs/graphql';

export enum ShopCustomerNotificationType {
  OrderCancelled = 'order_cancelled',
  OrderShipped = 'order_shipped',
  RateYourOrder = 'rate_your_order',
  OrderDelays = 'order_delays',
  OrderRefund = 'order_refund',
  SupportRequestUpdate = 'support_request_update',
  Announcement = 'announcement',
}

registerEnumType(ShopCustomerNotificationType, {
  name: 'ShopCustomerNotificationType',
  description: "The type of customer's shop notification",
});
