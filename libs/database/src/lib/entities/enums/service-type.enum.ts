import { registerEnumType } from '@nestjs/graphql';

export enum ServiceType {
  RideSharing = 'ride_sharing',
  PackageDelivery = 'package_delivery',
}

registerEnumType(ServiceType, {
  name: 'ServiceType',
});
