import { Injectable, Logger } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ShopEntity } from '../entities/shop/shop.entity';
import { FindOptionsWhere, Repository } from 'typeorm';
import { VerifyHash } from '../sms/auth-redis.service';

@Injectable()
export class SharedShopService {
  constructor(
    @InjectRepository(ShopEntity)
    public shopRepository: Repository<ShopEntity>,
  ) {}

  async findById(id: number): Promise<ShopEntity> {
    return this.shopRepository.findOneOrFail({
      where: { id },
      withDeleted: true,
    });
  }

  async findWithDeleted(
    filter: FindOptionsWhere<ShopEntity>,
  ): Promise<ShopEntity | null> {
    return this.shopRepository.findOne({
      where: filter,
      withDeleted: true,
    });
  }

  private async findUserByMobileNumber(
    mobileNumber: string,
  ): Promise<ShopEntity | null> {
    return this.shopRepository.findOne({
      where: { mobileNumber: { number: mobileNumber } },
      withDeleted: true,
    });
  }

  private async createUserWithMobileNumber(
    input: Omit<VerifyHash, 'code'>,
  ): Promise<ShopEntity> {
    Logger.log('creating rider with ');
    let shop = this.shopRepository.create({
      mobileNumber: {
        number: input.mobileNumber,
        countryCode: input.countryIso,
      },
    });
    shop = await this.shopRepository.save(shop);
    return shop;
  }

  updateLastActivity(riderId: number) {
    return this.shopRepository.update(riderId, {
      lastActivityAt: new Date(),
    });
  }

  async findOrCreateUserWithMobileNumber(input: {
    mobileNumber: string;
    countryIso?: string;
  }): Promise<ShopEntity> {
    const findResult = await this.findUserByMobileNumber(input.mobileNumber);
    if (findResult?.deletedAt != null) {
      await this.shopRepository.restore(findResult?.id);
    }
    if (findResult == null) {
      return await this.createUserWithMobileNumber(input);
    } else {
      return findResult;
    }
  }

  async deleteById(id: number): Promise<ShopEntity> {
    const user = await this.findById(id);
    await this.shopRepository.softDelete(id);
    return user;
  }
}
