import { registerEnumType } from '@nestjs/graphql';

export enum DeliveryPackageSize {
  Small = 'SMALL',
  Medium = 'MEDIUM',
  Large = 'LARGE',
}

registerEnumType(DeliveryPackageSize, {
  name: 'DeliveryPackageSize',
});
