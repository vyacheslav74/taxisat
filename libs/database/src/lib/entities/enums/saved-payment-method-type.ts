import { registerEnumType } from '@nestjs/graphql';

export enum SavedPaymentMethodType {
  CARD = 'CARD',
  BANK_ACCOUNT = 'BANK_ACCOUNT',
}

registerEnumType(SavedPaymentMethodType, {
  name: 'SavedPaymentMethodType',
  description: 'Saved payment method type',
});
