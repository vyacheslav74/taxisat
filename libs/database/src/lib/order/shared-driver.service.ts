import { Injectable, Logger } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { In, Repository } from 'typeorm';

import { DriverTransactionEntity } from '../entities/taxi/driver-transaction.entity';
import { DriverWalletEntity } from '../entities/taxi/driver-wallet.entity';
import { DriverEntity } from '../entities/taxi/driver.entity';
import { DriverStatus } from '../entities/enums/driver-status.enum';

@Injectable()
export class SharedDriverService {
  constructor(
    @InjectRepository(DriverEntity)
    public driverRepo: Repository<DriverEntity>,
    @InjectRepository(DriverWalletEntity)
    private driverWalletRepo: Repository<DriverWalletEntity>,
    @InjectRepository(DriverTransactionEntity)
    private driverTransactionRepo: Repository<DriverTransactionEntity>,
  ) {}

  async findById(id: number): Promise<DriverEntity> {
    return this.driverRepo.findOneOrFail({
      where: { id },
      relations: {
        enabledServices: {
          service: true,
        }, // We are using this relation in many places more specifically to find out if driver can do a service or not
      },
      withDeleted: true,
    });
  }

  async updateDriverStatus(driverId: number, status: DriverStatus) {
    return this.driverRepo.update(driverId, { status });
  }

  async getMaxRadiusForDriverServices(driverId: number): Promise<number> {
    const driver = await this.driverRepo.findOneOrFail({
      where: { id: driverId },
      relations: { enabledServices: { service: true } },
    });
    const radiuses = driver!.enabledServices.map(
      (service) => service.service!.searchRadius,
    );
    const max = Math.max(...radiuses);
    return max > 0 ? max : 0;
  }

  async getOnlineDriversWithServiceId(
    driverIds: number[],
    serviceId: number,
    fleetIds: number[] = [],
  ) {
    Logger.log(
      `Finding drivers with service ${serviceId}`,
      'SharedDriverService',
    );
    Logger.log(
      `DriverIds: ${JSON.stringify(driverIds)}`,
      'SharedDriverService',
    );
    Logger.log(`FleetIds: ${JSON.stringify(fleetIds)}`, 'SharedDriverService');
    let driversWithService: DriverEntity[];
    if (fleetIds.length > 0) {
      driversWithService = await this.driverRepo.find({
        where: {
          id: In(driverIds),
          status: DriverStatus.Online,
          fleetId: In(fleetIds),
        },
        relations: {
          enabledServices: {
            service: true,
          },
        },
      });
    } else {
      driversWithService = await this.driverRepo.find({
        where: {
          id: In(driverIds),
          status: DriverStatus.Online,
        },
        relations: {
          enabledServices: {
            service: true,
          },
        },
      });
    }
    return driversWithService.filter((x) =>
      x.enabledServices.map((y) => y.service?.id).includes(serviceId),
    );
  }

  async canDriverDoServiceAndFleet(
    driverId: number,
    serviceId: number,
    fleetIds: number[] = [],
  ): Promise<boolean> {
    return (
      (
        await this.getOnlineDriversWithServiceId(
          [driverId],
          serviceId,
          fleetIds,
        )
      ).length > 0
    );
  }

  async rechargeWallet(
    transaction: Pick<
      DriverTransactionEntity,
      | 'status'
      | 'action'
      | 'rechargeType'
      | 'deductType'
      | 'amount'
      | 'currency'
      | 'driverId'
      | 'requestId'
      | 'operatorId'
      | 'paymentGatewayId'
      | 'refrenceNumber'
      | 'description'
      | 'giftCardId'
    >,
  ) {
    let wallet = await this.driverWalletRepo.findOneBy({
      driverId: transaction.driverId,
      currency: transaction.currency,
    });
    transaction.amount = parseFloat(transaction.amount.toString());
    if (wallet == null) {
      wallet = await this.driverWalletRepo.save({
        balance: transaction.amount,
        currency: transaction.currency,
        driverId: transaction.driverId,
      });
    } else {
      await this.driverWalletRepo.update(wallet.id, {
        balance:
          parseFloat(transaction.amount.toString()) +
          parseFloat(wallet.balance.toString()),
      });
      wallet.balance += transaction.amount;
    }
    if (transaction.amount != 0) {
      Logger.log(`Saving transaction ${JSON.stringify(transaction)}`);
      this.driverTransactionRepo.save(transaction);
    }
    return wallet;
  }

  async setRating(driverId: number, rating: number, totalRatingCount: number) {
    return this.driverRepo.update(driverId, {
      rating: rating,
      reviewCount: totalRatingCount,
    });
  }

  async deleteById(id: number): Promise<DriverEntity> {
    const user = await this.findById(id);
    await this.driverRepo.softDelete(id);
    return user;
  }
}
