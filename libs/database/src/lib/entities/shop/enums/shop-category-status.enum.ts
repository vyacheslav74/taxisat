import { registerEnumType } from '@nestjs/graphql';

export enum ShopCategoryStatus {
  Enabled = 'enabled',
  Disabled = 'disabled',
}

registerEnumType(ShopCategoryStatus, {
  name: 'ShopCategoryStatus',
});
