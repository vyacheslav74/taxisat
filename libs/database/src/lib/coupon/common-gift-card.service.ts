import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { DriverRechargeTransactionType } from '@ridy/database/enums/driver-recharge-transaction-type.enum';
import { RiderRechargeTransactionType } from '@ridy/database/enums/rider-recharge-transaction-type.enum';
import { TransactionAction } from '@ridy/database/enums/transaction-action.enum';
import { TransactionStatus } from '@ridy/database/enums/transaction-status.enum';
import { GiftCodeEntity } from '@ridy/database/gift-code.entity';
import { GiftBatchEntity } from '@ridy/database/gift-batch.entity';
import { SharedDriverService } from '@ridy/order/shared-driver.service';
import { SharedRiderService } from '@ridy/order/shared-rider.service';
import { Repository } from 'typeorm';
import { SharedCustomerWalletService } from '../customer-wallet/shared-customer-wallet.service';

@Injectable()
export class CommonGiftCardService {
  constructor(
    @InjectRepository(GiftCodeEntity)
    private giftCardRepo: Repository<GiftCodeEntity>,
    private sharedRiderService: SharedRiderService,
    private sharedDriverService: SharedDriverService,
    private sharedCustomerWalletService: SharedCustomerWalletService,
  ) {}

  async redeemGiftCard(input: {
    code: string;
    userType: 'rider' | 'driver';
    userId: number;
  }): Promise<GiftBatchEntity> {
    const giftCode = await this.giftCardRepo.findOne({
      where: {
        code: input.code,
      },
      relations: {
        gift: true,
      },
    });
    if (!giftCode) {
      throw new Error('Недействительный подарочный код');
    }
    if (giftCode.usedAt != null) {
      throw new Error('Подарочный код уже использован');
    }
    if (giftCode.gift.expireAt != null && giftCode.gift.expireAt < new Date()) {
      throw new Error('Срок действия подарочного кода истек');
    }
    giftCode.usedAt = new Date();
    if (input.userType === 'rider') {
      await this.sharedCustomerWalletService.rechargeWallet({
        action: TransactionAction.Recharge,
        status: TransactionStatus.Done,
        riderId: input.userId,
        amount: giftCode.gift.amount,
        currency: giftCode.gift.currency,
        giftCardId: giftCode.id,
        rechargeType: RiderRechargeTransactionType.Gift,
      });
    } else {
      await this.sharedDriverService.rechargeWallet({
        action: TransactionAction.Recharge,
        status: TransactionStatus.Done,
        driverId: input.userId,
        amount: giftCode.gift.amount,
        currency: giftCode.gift.currency,
        giftCardId: giftCode.id,
        rechargeType: DriverRechargeTransactionType.Gift,
      });
    }
    await this.giftCardRepo.save(giftCode);

    return giftCode.gift;
  }
}
