import { registerEnumType } from '@nestjs/graphql';

export enum ParkingProviderNotificationType {
  booked = 'booked',
  cancelled = 'cancelled',
  expiring = 'expiring',
}

registerEnumType(ParkingProviderNotificationType, {
  name: 'ParkingProviderNotificationType',
  description: 'The type of notification that a provider can receive',
});
