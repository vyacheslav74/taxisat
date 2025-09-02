import { HttpModule } from '@nestjs/axios';
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CommonCouponModule } from '../coupon/common-coupon.module';
import { RedisPubSubProvider } from '../redis-pub-sub.provider';
import { DriverTransactionEntity } from '../entities/taxi/driver-transaction.entity';
import { DriverWalletEntity } from '../entities/taxi/driver-wallet.entity';
import { DriverEntity } from '../entities/taxi/driver.entity';
import { FleetTransactionEntity } from '../entities/taxi/fleet-transaction.entity';
import { FleetWalletEntity } from '../entities/taxi/fleet-wallet.entity';
import { FleetEntity } from '../entities/taxi/fleet.entity';
import { PaymentEntity } from '../entities/payment.entity';
import { ProviderTransactionEntity } from '../entities/provider-transaction.entity';
import { ProviderWalletEntity } from '../entities/provider-wallet.entity';
import { RequestActivityEntity } from '../entities/taxi/request-activity.entity';
import { TaxiOrderEntity } from '../entities/taxi/taxi-order.entity';
import { CustomerEntity } from '../entities/customer.entity';
import { RiderTransactionEntity } from '../entities/rider-transaction.entity';
import { RiderWalletEntity } from '../entities/rider-wallet.entity';
import { ServiceCategoryEntity } from '../entities/taxi/service-category.entity';
import { ServiceOptionEntity } from '../entities/taxi/service-option.entity';
import { ServiceEntity } from '../entities/taxi/service.entity';
import { ZonePriceEntity } from '../entities/taxi/zone-price.entity';
import { RedisHelpersModule } from '../redis/redis-helper.module';
import { SharedConfigurationService } from '../shared-configuration.service';
import { FirebaseNotificationModule } from './firebase-notification-service/firebase-notification-service.module';
import { GoogleServicesModule } from './google-services/google-services.module';
import { RegionModule } from './region/region.module';
import { ServiceService } from './service.service';
import { SharedDriverService } from './shared-driver.service';
import { SharedFleetService } from './shared-fleet.service';
import { SharedOrderService } from './shared-order.service';
import { SharedProviderService } from './shared-provider.service';
import { SharedRiderService } from './shared-rider.service';
import { SharedCustomerWalletModule } from '../customer-wallet/shared-customer-wallet.module';

@Module({
  imports: [
    RedisHelpersModule,
    CommonCouponModule,
    SharedCustomerWalletModule,
    TypeOrmModule.forFeature([
      ServiceCategoryEntity,
      ServiceOptionEntity,
      ServiceEntity,
      CustomerEntity,
      DriverEntity,
      DriverWalletEntity,
      DriverTransactionEntity,
      FleetEntity,
      FleetWalletEntity,
      FleetTransactionEntity,
      ProviderWalletEntity,
      ProviderTransactionEntity,
      RiderWalletEntity,
      RiderTransactionEntity,
      TaxiOrderEntity,
      RequestActivityEntity,
      ZonePriceEntity,
      PaymentEntity,
    ]),
    HttpModule,
    RegionModule,
    GoogleServicesModule,
    FirebaseNotificationModule.register(),
  ],
  providers: [
    RedisPubSubProvider.provider(),
    ServiceService,
    SharedDriverService,
    SharedFleetService,
    SharedOrderService,
    SharedProviderService,
    SharedRiderService,
    SharedConfigurationService,
  ],
  exports: [
    SharedDriverService,
    SharedFleetService,
    SharedOrderService,
    SharedProviderService,
    SharedRiderService,
    ServiceService,
  ],
})
export class SharedOrderModule {}
