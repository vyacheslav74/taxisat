import { registerEnumType } from '@nestjs/graphql';

export enum SMSStatus {
  PENDING = 'PENDING',
  SENT = 'SENT',
  FAILED = 'FAILED',
  DELIVERED = 'DELIVERED',
  UNDELIVERED = 'UNDELIVERED',
  REJECTED = 'REJECTED',
  EXPIRED = 'EXPIRED',
}

registerEnumType(SMSStatus, {
  name: 'SMSStatus',
});
