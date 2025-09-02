import { registerEnumType } from '@nestjs/graphql';

export enum ParkingPermission {
  PARKING_VIEW = 'PARKING_VIEW',
  PARKING_EDIT = 'PARKING_EDIT',
  ORDER_VIEW = 'ORDER_VIEW',
  ORDER_EDIT = 'ORDER_EDIT',
}

registerEnumType(ParkingPermission, { name: 'ParkingPermission' });
