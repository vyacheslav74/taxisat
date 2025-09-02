import { registerEnumType } from '@nestjs/graphql';

export enum DeliveryMethod {
  BATCH = 'BATCH',
  SPLIT = 'SPLIT',
  SCHEDULED = 'SCHEDULED',
}

registerEnumType(DeliveryMethod, { name: 'DeliveryMethod' });
