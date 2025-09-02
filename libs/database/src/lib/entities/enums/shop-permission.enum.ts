import { registerEnumType } from '@nestjs/graphql';

export enum ShopPermission {
  SHOP_VIEW = 'SHOP_VIEW',
  SHOP_EDIT = 'SHOP_EDIT',
  ORDER_VIEW = 'ORDER_VIEW',
  ORDER_EDIT = 'ORDER_EDIT',
}

registerEnumType(ShopPermission, { name: 'ShopPermission' });
