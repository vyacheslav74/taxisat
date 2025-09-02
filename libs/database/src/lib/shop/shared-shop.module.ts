import { Module } from '@nestjs/common';
import { SharedShopService } from './shared-shop.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ShopEntity } from '../entities/shop/shop.entity';
import { DeliveryFeeService } from './delivery-fee.service';
import { RiderAddressEntity } from '../entities/rider-address.entity';
import { ServiceEntity } from '@ridy/database/taxi/service.entity';
import { GoogleServicesModule } from '@ridy/order/google-services/google-services.module';
import { SharedOrderModule } from '@ridy/order/shared-order.module';
import { ProductEntity } from '@ridy/database/shop/product.entity';

@Module({
  imports: [
    GoogleServicesModule,
    SharedOrderModule,

    TypeOrmModule.forFeature([
      ShopEntity,
      RiderAddressEntity,
      ServiceEntity,
      ProductEntity,
    ]),
  ],
  providers: [SharedShopService, DeliveryFeeService],
  exports: [SharedShopService, DeliveryFeeService],
})
export class SharedShopModule {}
