import { registerEnumType } from '@nestjs/graphql';

export enum ParkOrderStatus {
  PENDING = 'pending',
  PAID = 'paid',
  CANCELLED = 'cancelled',
  ACCEPTED = 'accepted',
  REJECTED = 'rejected',
  COMPLETED = 'completed',
}

registerEnumType(ParkOrderStatus, {
  name: 'ParkOrderStatus',
  description:
    'park order status, Pending is the default status prior to payment',
});
