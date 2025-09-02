import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { CouponEntity } from '@ridy/database/coupon.entity';
import { TaxiOrderEntity } from '@ridy/database/taxi/taxi-order.entity';
import { ForbiddenError } from '@nestjs/apollo';
import { Repository } from 'typeorm';

@Injectable()
export class CommonCouponService {
  constructor(
    @InjectRepository(CouponEntity)
    private couponRepo: Repository<CouponEntity>,
    @InjectRepository(TaxiOrderEntity)
    private requestRepo: Repository<TaxiOrderEntity>,
  ) {}

  applyCouponOnPrice(coupon: CouponEntity, price: number): number {
    if (coupon == null) return price;
    price *= (100.0 - coupon.discountPercent) / 100.0;
    price -= coupon.discountFlat;
    return price;
  }

  async getCouponInfo(input: {
    code: string;
    riderId?: number;
  }): Promise<CouponEntity> {
    const coupon = await this.couponRepo.findOneBy({ code: input.code });
    if (coupon == null) {
      throw new ForbiddenError('Incorrect code');
    }
    if (coupon.expireAt == null || coupon.expireAt < new Date()) {
      throw new ForbiddenError('Coupon expired');
    }
    if (input.riderId != null) {
      const requestsWithCoupon = await this.requestRepo.count({
        where: { riderId: input.riderId, couponId: coupon.id },
      });
      if (requestsWithCoupon >= coupon.manyTimesUserCanUse) {
        throw new ForbiddenError('Coupon already used.');
      }
    }
    if (!coupon.isEnabled) {
      throw new ForbiddenError('Coupon is disabled.');
    }
    const timesCouponUsed = await this.requestRepo.count({
      where: { couponId: coupon.id },
    });
    if (timesCouponUsed >= coupon.manyUsersCanUse) {
      throw new ForbiddenError('Coupon usage limit exceeded.');
    }
    return coupon;
  }

  async checkCoupon(code: string, riderId?: number): Promise<CouponEntity> {
    const coupon = await this.couponRepo.findOneBy({ code });
    if (coupon == null) {
      throw new ForbiddenError('Incorrect code');
    }
    if (coupon.expireAt == null || coupon.expireAt < new Date()) {
      throw new ForbiddenError('Coupon expired');
    }
    if (riderId != null) {
      const requestsWithCoupon = await this.requestRepo.count({
        where: { riderId, couponId: coupon.id },
      });
      if (requestsWithCoupon >= coupon.manyTimesUserCanUse) {
        throw new ForbiddenError('Coupon already used.');
      }
    }
    if (!coupon.isEnabled) {
      throw new ForbiddenError('Coupon is disabled.');
    }
    const timesCouponUsed = await this.requestRepo.count({
      where: { couponId: coupon.id },
    });
    if (timesCouponUsed >= coupon.manyUsersCanUse) {
      throw new ForbiddenError('Coupon usage limit exceeded.');
    }
    return coupon;
  }

  async applyCoupon(
    code: string,
    orderId: number,
    riderId: number,
  ): Promise<TaxiOrderEntity> {
    const coupon = await this.checkCoupon(code, riderId);
    let request = await this.requestRepo.findOneOrFail({
      where: { id: orderId },
      relations: { service: true },
    });
    const finalCost = this.applyCouponOnPrice(
      coupon,
      request.costBest + request.waitMinutes * request.service.perMinuteWait,
    );
    await this.requestRepo.update(request.id, {
      couponId: coupon.id,
      costAfterCoupon: finalCost,
    });
    request = await this.requestRepo.findOneOrFail({
      where: { id: orderId },
      relations: { service: true },
    });
    return request;
  }
}
