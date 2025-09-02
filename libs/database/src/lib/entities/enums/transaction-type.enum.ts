import { registerEnumType } from '@nestjs/graphql';

export enum TransactionType {
  Debit = 'Debit',
  Credit = 'Credit',
}

registerEnumType(TransactionType, { name: 'TransactionType' });
