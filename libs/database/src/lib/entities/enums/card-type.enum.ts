import { registerEnumType } from '@nestjs/graphql';

export enum ProviderBrand {
  Visa = 'visa',
  Mastercard = 'mastercard',
  Amex = 'amex',
  Discover = 'discover',
  Diners = 'diners',
  EftPosAu = 'eftpos_au',
  JCB = 'jcb',
  UnionPay = 'unionpay',
  Unknown = 'unknown',
}

registerEnumType(ProviderBrand, {
  name: 'ProviderBrand',
  description: 'Brand of the provider wether bank name or card provider',
});
