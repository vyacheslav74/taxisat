import { registerEnumType } from '@nestjs/graphql';

export enum GatewayLinkMethod {
  none = 'none',
  redirect = 'redirect',
  manual = 'manual',
}

registerEnumType(GatewayLinkMethod, {
  name: 'GatewayLinkMethod',
  description: 'Method of connecting to a payout or saved payment method.',
});
