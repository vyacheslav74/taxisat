import { registerEnumType } from '@nestjs/graphql';

export enum TaxiOrderType {
  Ride = 'ride',
  Rideshare = 'rideshare',
  ParcelDelivery = 'parcelDelivery',
  FoodDelivery = 'foodDelivery',
  ShopDelivery = 'shopDelivery',
}

registerEnumType(TaxiOrderType, {
  name: 'TaxiOrderType',
  description:
    'Different types of taxi orders, including ride, rideshare, parcel delivery, food delivery, and shop delivery.',
});
