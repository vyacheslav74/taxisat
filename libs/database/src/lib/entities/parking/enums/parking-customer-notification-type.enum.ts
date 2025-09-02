import { registerEnumType } from '@nestjs/graphql';

export enum ParkingCustomerNotificationType {
  booked = 'booked',
  cancelled = 'cancelled',
  expiring = 'expiring',
  rate = 'rate',
}

registerEnumType(ParkingCustomerNotificationType, {
  name: 'ParkingCustomerNotificationType',
  description: 'The type of notification that a customer can receive',
});
