import { registerEnumType } from '@nestjs/graphql';

export enum OrderPaymentStatus {
  Unpaid = 'unpaid',
  Paid = 'paid',
  Refunded = 'refunded',
  PartiallyRefunded = 'partially_refunded',
  Pending = 'pending',
  Cancelled = 'cancelled',
  Failed = 'failed',
}

registerEnumType(OrderPaymentStatus, {
  name: 'OrderPaymentStatus',
});
