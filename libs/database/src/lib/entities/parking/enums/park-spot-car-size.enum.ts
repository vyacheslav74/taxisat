import { registerEnumType } from '@nestjs/graphql';

export enum ParkSpotCarSize {
  SMALL = 'small',
  MEDIUM = 'medium',
  LARGE = 'large',
  VERY_LARGE = 'very_large',
}

registerEnumType(ParkSpotCarSize, {
  name: 'ParkSpotCarSize',
});
