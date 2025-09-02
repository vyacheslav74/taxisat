import { registerEnumType } from '@nestjs/graphql';

export enum ParkingTransactionCreditType {
  WalletTopUp = 'WalletTopUp',
  GiftCardTopUp = 'GiftCardTopUp',
  BankTransfer = 'BankTransfer',
  ParkingRentalIncome = 'ParkingRentalIncome',
  Correction = 'Correction',
}

registerEnumType(ParkingTransactionCreditType, {
  name: 'ParkingTransactionCreditType',
});
