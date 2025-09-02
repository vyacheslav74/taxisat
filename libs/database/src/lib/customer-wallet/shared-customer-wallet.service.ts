import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { RiderTransactionEntity } from '../entities/rider-transaction.entity';
import { RiderWalletEntity } from '../entities/rider-wallet.entity';

@Injectable()
export class SharedCustomerWalletService {
  constructor(
    @InjectRepository(RiderWalletEntity)
    private readonly customerWalletRepo: Repository<RiderWalletEntity>,
    @InjectRepository(RiderTransactionEntity)
    private readonly customerTransactionRepo: Repository<RiderTransactionEntity>,
  ) {}

  async getRiderCreditInCurrency(riderId: number, currency: string) {
    const wallet = await this.customerWalletRepo.findOneBy({
      riderId,
      currency,
    });
    return wallet?.balance ?? 0;
  }

  async rechargeWallet(
    input: Pick<
      RiderTransactionEntity,
      | 'status'
      | 'action'
      | 'rechargeType'
      | 'deductType'
      | 'amount'
      | 'currency'
      | 'riderId'
      | 'requestId'
      | 'operatorId'
      | 'paymentGatewayId'
      | 'refrenceNumber'
      | 'description'
      | 'giftCardId'
      | 'savedPaymentMethodId'
    >,
  ): Promise<{
    wallet: RiderWalletEntity;
    transaction: RiderTransactionEntity;
  }> {
    let wallet = await this.customerWalletRepo.findOneBy({
      riderId: input.riderId,
      currency: input.currency,
    });
    if (wallet == null) {
      wallet = await this.customerWalletRepo.save({
        balance: input.amount,
        currency: input.currency,
        riderId: input.riderId,
      });
    } else {
      await this.customerWalletRepo.update(wallet.id, {
        balance: input.amount + wallet.balance,
      });
      wallet.balance += input.amount;
    }
    const transaction = await this.customerTransactionRepo.save(input);
    return {
      wallet,
      transaction,
    };
  }
}
