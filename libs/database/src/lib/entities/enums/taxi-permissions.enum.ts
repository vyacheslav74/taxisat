import { registerEnumType } from '@nestjs/graphql';

export enum TaxiPermission {
  DRIVER_VIEW = 'DRIVER_VIEW',
  DRIVER_EDIT = 'DRIVER_EDIT',
  ORDER_VIEW = 'ORDER_VIEW',
  ORDER_EDIT = 'ORDER_EDIT',
  REGION_VIEW = 'REGIONS_VIEW',
  REGION_EDIT = 'REGIONS_EDIT',
  VEHICLE_VIEW = 'VEHICLES_VIEW',
  VEHICLE_EDIT = 'VEHICLES_EDIT',
  FLEET_VIEW = 'FLEETS_VIEW',
  FLEET_EDIT = 'FLEETS_EDIT',
  PRICING_VIEW = 'PRICING_VIEW',
  PRICING_EDIT = 'PRICING_EDIT',
}

registerEnumType(TaxiPermission, { name: 'TaxiPermission' });
