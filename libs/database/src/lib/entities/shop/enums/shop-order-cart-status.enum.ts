import { registerEnumType } from '@nestjs/graphql';

export enum CartStatus {
  New = 'New',
  Preparing = 'Preparing',
  ReadyForPickup = 'ReadyForPickup',
  OutForDelivery = 'OutForDelivery',
  Completed = 'Completed',
  CancelRequestedByShop = 'CancelRequestedByShop',
  CanceledRequestedByCustomer = 'CanceledRequestedByCustomer',
  CanceledByShop = 'CanceledByShop',
  CanceledByCustomer = 'CanceledByCustomer',
  Returned = 'Returned',
  Failed = 'Failed',
}

registerEnumType(CartStatus, {
  name: 'CartStatus',
});
