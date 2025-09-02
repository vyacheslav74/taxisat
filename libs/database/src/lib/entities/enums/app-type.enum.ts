import { registerEnumType } from '@nestjs/graphql';

export enum AppType {
  Taxi = 'Taxi',
  Shop = 'Shop',
  Parking = 'Parking',
}

registerEnumType(AppType, {
  name: 'AppType',
});
