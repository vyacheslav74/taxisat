import { registerEnumType } from '@nestjs/graphql';

export enum PaymentMode {
  Cash = 'cash',
  SavedPaymentMethod = 'savedPaymentMethod',
  PaymentGateway = 'paymentGateway',
  Wallet = 'wallet',
}

registerEnumType(PaymentMode, {
  name: 'PaymentMode',
  description: 'The means of payment for an order.',
});
