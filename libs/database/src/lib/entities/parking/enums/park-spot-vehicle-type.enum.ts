import { registerEnumType } from '@nestjs/graphql';

export enum ParkSpotVehicleType {
  Car = 'car',
  Bike = 'bike',
  Truck = 'truck',
}

registerEnumType(ParkSpotVehicleType, {
  name: 'ParkSpotVehicleType',
  description: 'The type of ride that can be parked in a park spot',
});
