import { Injectable, Logger } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { CustomerEntity } from '../entities/customer.entity';
import { FindOptionsWhere, Repository } from 'typeorm';
import { VerifyHash } from '../sms/auth-redis.service';

@Injectable()
export class SharedCustomerService {
  constructor(
    @InjectRepository(CustomerEntity)
    public customerRepository: Repository<CustomerEntity>,
  ) {}

  async findById(id: number): Promise<CustomerEntity> {
    return this.customerRepository.findOneOrFail({
      where: { id },
      withDeleted: true,
    });
  }

  async findWithDeleted(
    filter: FindOptionsWhere<CustomerEntity>,
  ): Promise<CustomerEntity | null> {
    return this.customerRepository.findOne({
      where: filter,
      withDeleted: true,
    });
  }

  private async findUserByMobileNumber(
    mobileNumber: string,
  ): Promise<CustomerEntity | null> {
    return this.customerRepository.findOne({
      where: { mobileNumber },
      withDeleted: true,
    });
  }

  private async createUserWithMobileNumber(
    input: Omit<VerifyHash, 'code'>,
  ): Promise<CustomerEntity> {
    Logger.log('creating rider with ');
    const rider = this.customerRepository.create({
      mobileNumber: input.mobileNumber,
      countryIso: input.countryIso,
    });
    const CustomerEntity = await this.customerRepository.save(rider);
    return CustomerEntity;
  }

  updateLastActivity(riderId: number) {
    return this.customerRepository.update(riderId, {
      lastActivityAt: new Date(),
    });
  }

  async findOrCreateUserWithMobileNumber(input: {
    mobileNumber: string;
    countryIso?: string;
  }): Promise<CustomerEntity> {
    const findResult = await this.findUserByMobileNumber(input.mobileNumber);
    if (findResult?.deletedAt != null) {
      await this.customerRepository.restore(findResult?.id);
    }
    if (findResult == null) {
      return await this.createUserWithMobileNumber(input);
    } else {
      return findResult;
    }
  }

  async deleteById(id: number): Promise<CustomerEntity> {
    const user = await this.findById(id);
    await this.customerRepository.softDelete(id);
    return user;
  }
}
