import { registerEnumType } from '@nestjs/graphql';

export enum ShopTransactionCreditType {
  SaleRevenue = 'SaleRevenue',
  Correction = 'Correction',
}

registerEnumType(ShopTransactionCreditType, {
  name: 'ShopTransactionCreditType',
});
