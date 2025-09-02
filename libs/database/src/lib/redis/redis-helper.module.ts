import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DriverTransactionEntity } from '@ridy/database/taxi/driver-transaction.entity';
import { DriverWalletEntity } from '@ridy/database/taxi/driver-wallet.entity';
import { DriverEntity } from '@ridy/database/taxi/driver.entity';
import { SharedDriverService } from '@ridy/order/shared-driver.service';
import { DriverRedisService } from './driver-redis.service';
import { OrderRedisService } from './order-redis.service';
import { AuthRedisService } from '../sms/auth-redis.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      DriverEntity,
      DriverWalletEntity,
      DriverTransactionEntity,
    ]),
  ],
  providers: [
    DriverRedisService,
    OrderRedisService,
    SharedDriverService,
    AuthRedisService,
  ],
  exports: [DriverRedisService, OrderRedisService, AuthRedisService],
})
export class RedisHelpersModule {}
