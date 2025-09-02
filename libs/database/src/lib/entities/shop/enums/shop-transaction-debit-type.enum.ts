import { registerEnumType } from '@nestjs/graphql';

export enum ShopTransactionDebitType {
  Commission = 'Commission',
  Correction = 'Correction',
  Payout = 'Payout',
  Refund = 'Refund',
}

registerEnumType(ShopTransactionDebitType, {
  name: 'ShopTransactionDebitType',
});
