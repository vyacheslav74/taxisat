import { registerEnumType } from '@nestjs/graphql';

export enum ShopOrderStatus {
  New = 'new',
  Processing = 'processing',
  PaymentPending = 'payment-pending',
  PaymentFailed = 'payment-failed',
  OnHold = 'on-hold',
  ReadyForPickup = 'ready-for-pickup',
  OutForDelivery = 'out-for-delivery',
  Completed = 'completed',
  Cancelled = 'cancelled',
  Returned = 'returned',
  Refunded = 'refunded',
}

registerEnumType(ShopOrderStatus, {
  name: 'ShopOrderStatus',
  description: 'The status of the shop order',
});
