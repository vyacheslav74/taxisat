import { registerEnumType } from '@nestjs/graphql';

export enum PayoutMethodType {
  Stripe = 'stripe',
  BankTransfer = 'bank_transfer',
}

registerEnumType(PayoutMethodType, {
  name: 'PayoutMethodType',
  description: 'The type of payout method',
});
