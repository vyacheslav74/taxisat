import { registerEnumType } from '@nestjs/graphql';

export enum OrderFulfillmentMethod {
  ShopDelivery = 'shop_delivery',
  ExpressDelivery = 'express_delivery',
  CustomerPickup = 'customer_pickup',
}

registerEnumType(OrderFulfillmentMethod, {
  name: 'OrderFulfillmentMethod',
  description:
    'The method of order fulfillment including shop delivery, express delivery, and customer pickup',
});
