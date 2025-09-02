import { registerEnumType } from '@nestjs/graphql';

export enum ParkSpotType {
  PERSONAL = 'personal',
  PUBLIC = 'public',
}

registerEnumType(ParkSpotType, {
  name: 'ParkSpotType',
  description:
    'The type of the park spot, If personal then show the location as name, If public then show the name as location',
});
