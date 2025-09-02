import { registerEnumType } from '@nestjs/graphql';

export enum ProviderExpenseType {
  TechnologyDevelopment = 'TechnologyDevelopment',
  PlatformMaintenance = 'PlatformMaintenance',
  SoftwareLicense = 'SoftwareLicense',
  Hosting = 'Hosting',
  CloudServices = 'CloudServices',
  Marketing = 'Marketing',
}

registerEnumType(ProviderExpenseType, { name: 'ProviderExpenseType' });
