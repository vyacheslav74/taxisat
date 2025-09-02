import { Module } from '@nestjs/common';
import { SharedCustomerService } from './shared-customer.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CustomerEntity } from '../entities/customer.entity';

@Module({
  imports: [TypeOrmModule.forFeature([CustomerEntity])],
  providers: [SharedCustomerService],
  exports: [SharedCustomerService],
})
export class SharedCustomerModule {}
