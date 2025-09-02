import { Module, forwardRef } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CouponEntity } from '@ridy/database/coupon.entity';
import { TaxiOrderEntity } from '@ridy/database/taxi/taxi-order.entity';

import { CommonCouponService } from './common-coupon.service';
import { CommonGiftCardService } from './common-gift-card.service';
import { GiftCodeEntity } from '@ridy/database/gift-code.entity';
import { SharedRiderService } from '@ridy/order/shared-rider.service';
import { SharedDriverService } from '@ridy/order/shared-driver.service';
import { CustomerEntity } from '@ridy/database/customer.entity';
import { DriverEntity } from '@ridy/database/taxi/driver.entity';
import { RiderWalletEntity } from '@ridy/database/rider-wallet.entity';
import { DriverWalletEntity } from '@ridy/database/taxi/driver-wallet.entity';
import { RiderTransactionEntity } from '@ridy/database/rider-transaction.entity';
import { DriverTransactionEntity } from '@ridy/database/taxi/driver-transaction.entity';
import { SharedCustomerWalletModule } from '@ridy/customer-wallet';

@Module({
  imports: [
    SharedCustomerWalletModule,
    TypeOrmModule.forFeature([
      TaxiOrderEntity,
      CustomerEntity,
      DriverEntity,
      CouponEntity,
      RiderWalletEntity,
      DriverWalletEntity,
      RiderTransactionEntity,
      DriverTransactionEntity,
      GiftCodeEntity,
    ]),
  ],
  providers: [
    CommonCouponService,
    CommonGiftCardService,
    SharedRiderService,
    SharedDriverService,
  ],
  exports: [CommonCouponService, CommonGiftCardService],
})
export class CommonCouponModule {}
