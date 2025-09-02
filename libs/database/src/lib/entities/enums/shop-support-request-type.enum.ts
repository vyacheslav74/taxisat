import { registerEnumType } from '@nestjs/graphql';

export enum ShopSupportRequestType {
  UnavailableProduct = 'UnavailableProduct',
  CancelOrder = 'CancelOrder',
  UpdateShopCategories = 'UpdateShopCategories',
  UpdateItem = 'UpdateItem',
  ExpressDelivery = 'ExpressDelivery',
  Other = 'Other',
}

registerEnumType(ShopSupportRequestType, {
  name: 'ShopSupportRequestType',
  description: 'The type of support request for a shop',
});
