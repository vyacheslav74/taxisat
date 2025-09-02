import { registerEnumType } from '@nestjs/graphql';

export enum ProviderDeductTransactionType {
  Withdraw = 'Withdraw',
  Expense = 'Expense',
  Refund = 'Refund',
}

registerEnumType(ProviderDeductTransactionType, {
  name: 'ProviderDeductTransactionType',
});
