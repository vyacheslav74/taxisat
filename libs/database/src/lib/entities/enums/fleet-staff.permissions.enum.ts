import { registerEnumType } from '@nestjs/graphql';

export enum FleetStaffPermissionOrder {
  CAN_VIEW = 'CAN_VIEW',
  CAN_EDIT = 'CAN_EDIT',
}

registerEnumType(FleetStaffPermissionOrder, {
  name: 'FleetStaffPermissionOrder',
});

export enum FleetStaffPermissionFinancial {
  CAN_VIEW = 'CAN_VIEW',
  CAN_EDIT = 'CAN_EDIT',
}

registerEnumType(FleetStaffPermissionFinancial, {
  name: 'FleetStaffPermissionFinancial',
});
