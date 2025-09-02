import { registerEnumType } from '@nestjs/graphql';

export enum ParkSpotStatus {
  Pending = 'pending',
  Active = 'active',
  Blocked = 'blocked',
  Inactive = 'inactive',
}

registerEnumType(ParkSpotStatus, {
  name: 'ParkSpotStatus',
  description: 'The status of the park spot',
});
