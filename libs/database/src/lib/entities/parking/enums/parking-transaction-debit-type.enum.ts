import { registerEnumType } from '@nestjs/graphql';

export enum ParkingTransactionDebitType {
  Commission = 'Commission',
  Correction = 'Correction',
  Payout = 'Payout',
  Refund = 'Refund',
  ParkingFee = 'ParkingFee',
  CancelFee = 'CancelFee',
}

registerEnumType(ParkingTransactionDebitType, {
  name: 'ParkingTransactionDebitType',
});
