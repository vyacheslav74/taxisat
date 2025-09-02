import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { RiderTransactionEntity } from '../entities/rider-transaction.entity';
import { RiderWalletEntity } from '../entities/rider-wallet.entity';
import { SharedCustomerWalletService } from './shared-customer-wallet.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([RiderWalletEntity, RiderTransactionEntity]),
  ],
  providers: [SharedCustomerWalletService],
  exports: [SharedCustomerWalletService],
})
export class SharedCustomerWalletModule {}
