import { registerEnumType } from '@nestjs/graphql';

export enum PayoutSessionStatus {
  PENDING = 'pending',
  IN_PROGRESS = 'in_progress',
  PAID = 'paid',
  FAILED = 'failed',
  CANCELLED = 'cancelled',
}

registerEnumType(PayoutSessionStatus, {
  name: 'PayoutSessionStatus',
  description: undefined,
});
