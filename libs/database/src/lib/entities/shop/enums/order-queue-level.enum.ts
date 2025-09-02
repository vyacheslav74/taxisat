import { registerEnumType } from '@nestjs/graphql';

export enum OrderQueueLevel {
  LOW = 'LOW',
  MEDIUM = 'MEDIUM',
  HIGH = 'HIGH',
}

registerEnumType(OrderQueueLevel, {
  name: 'OrderQueueLevel',
});
