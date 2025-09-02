import { registerEnumType } from '@nestjs/graphql';

export enum ShopCustomerSupportRequestType {
  NonDelivery = 'non_delivery',
  WrongItem = 'wrong_item',
  MissingItem = 'missing_item',
  DamagedItem = 'damaged_item',
  CancelOrder = 'cancel_order',
  Other = 'other',
}

registerEnumType(ShopCustomerSupportRequestType, {
  name: 'ShopCustomerSupportRequestType',
  description: 'The type of support request for a shop customer',
});
