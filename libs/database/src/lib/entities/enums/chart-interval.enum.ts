import { registerEnumType } from '@nestjs/graphql';

export enum ChartInterval {
  Daily = 'Daily',
  Monthly = 'Monthly',
  Quarterly = 'Quarterly',
  Yearly = 'Yearly',
}

registerEnumType(ChartInterval, { name: 'ChartInterval' });
