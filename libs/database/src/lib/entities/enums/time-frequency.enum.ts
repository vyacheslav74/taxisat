import { registerEnumType } from '@nestjs/graphql';

export enum TimeFrequency {
  Daily = 'daily',
  Weekly = 'weekly',
  Monthly = 'monthly',
  Quarterly = 'quarterly',
  Yearly = 'yearly',
}

registerEnumType(TimeFrequency, {
  name: 'TimeFrequency',
});
