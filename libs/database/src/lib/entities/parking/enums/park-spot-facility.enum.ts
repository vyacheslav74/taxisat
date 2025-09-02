import { registerEnumType } from '@nestjs/graphql';

export enum ParkSpotFacility {
  GUARDED = 'guarded',
  COVERED = 'covered',
  CCTV = 'cctv',
  ELECTRIC_CHARGING = 'electric_charging',
  CAR_WASH = 'car_wash',
  TOILET = 'toilet',
}

registerEnumType(ParkSpotFacility, {
  name: 'ParkSpotFacility',
  description:
    'List of possible park spot facilities. This enum is used in ParkSpot.',
});
