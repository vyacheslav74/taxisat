import { registerEnumType } from '@nestjs/graphql';

export enum RiderDeductTransactionType {
  OrderFee = 'OrderFee',
  ParkingFee = 'ParkingFee',
  CancellationFee = 'CancellationFee',
  Withdraw = 'Withdraw',
  Correction = 'Correction',
}

registerEnumType(RiderDeductTransactionType, {
  name: 'RiderDeductTransactionType',
});
