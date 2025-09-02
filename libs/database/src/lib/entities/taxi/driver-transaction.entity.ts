import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { DriverEntity } from './driver.entity';
import { DriverDeductTransactionType } from '../enums/driver-deduct-transaction-type.enum';
import { DriverRechargeTransactionType } from '../enums/driver-recharge-transaction-type.enum';
import { TransactionAction } from '../enums/transaction-action.enum';
import { TransactionStatus } from '../enums/transaction-status.enum';
import { OperatorEntity } from '../operator.entity';
import { TaxiOrderEntity } from './taxi-order.entity';
import { PaymentGatewayEntity } from '../payment-gateway.entity';
import { GiftCodeEntity } from '../gift-code.entity';
import { PayoutAccountEntity } from '../payout-account.entity';
import { ShopOrderEntity } from '../shop/shop-order.entity';
import { TaxiPayoutSessionPayoutMethodDetailEntity } from './taxi-payout-session-payout-method-detail.entity';
import { TaxiPayoutSessionEntity } from './taxi-payout-session.entity';
import { PayoutMethodEntity } from '../payout-method.entity';

@Entity('driver_transaction')
export class DriverTransactionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn({ name: 'transactionTime' })
  createdAt!: Date;

  @Column('enum', {
    enum: TransactionStatus,
    default: TransactionStatus.Processing,
  })
  status!: TransactionStatus;

  @Column('enum', { enum: TransactionAction })
  action!: TransactionAction;

  @Column('enum', {
    enum: DriverDeductTransactionType,
    nullable: true,
  })
  deductType?: DriverDeductTransactionType;

  @Column('enum', {
    enum: DriverRechargeTransactionType,
    nullable: true,
  })
  rechargeType?: DriverRechargeTransactionType;

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  amount!: number;

  @Column('char', { length: '3' })
  currency!: string;

  @Column({ nullable: true, name: 'documentNumber' })
  refrenceNumber?: string;

  @Column({ nullable: true, name: 'details' })
  description?: string;

  @ManyToOne(() => DriverEntity, (driver) => driver.transactions)
  driver!: DriverEntity;

  @Column()
  driverId!: number;

  @ManyToOne(() => PaymentGatewayEntity, (gateway) => gateway.riderTransactions)
  paymentGateway?: PaymentGatewayEntity;

  @Column({ nullable: true })
  paymentGatewayId?: number;

  @ManyToOne(() => OperatorEntity, (operator) => operator.driverTransactions)
  operator?: OperatorEntity;

  @Column({ nullable: true })
  operatorId?: number;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.driverTransactions)
  request?: TaxiOrderEntity;

  @Column({ nullable: true })
  requestId?: number;

  @OneToOne(() => GiftCodeEntity, (giftCard) => giftCard.riderTransaction)
  @JoinColumn()
  giftCard?: GiftCodeEntity;

  @Column({ nullable: true })
  giftCardId?: number;

  @ManyToOne(
    () => TaxiPayoutSessionEntity,
    (session) => session.driverTransactions,
  )
  payoutSession?: TaxiPayoutSessionEntity;

  @Column({ nullable: true })
  payoutSessionId?: number;

  @ManyToOne(
    () => PayoutAccountEntity,
    (payoutAccount) => payoutAccount.driverTransactions,
  )
  payoutAccount?: PayoutAccountEntity;

  @Column({ nullable: true })
  payoutAccountId?: number;

  @ManyToOne(
    () => PayoutMethodEntity,
    (payoutMethod) => payoutMethod.driverTransactions,
  )
  payoutMethod?: PayoutMethodEntity;

  @Column({ nullable: true })
  payoutMethodId?: number;

  @ManyToOne(
    () => TaxiPayoutSessionPayoutMethodDetailEntity,
    (payoutSessionMethod) => payoutSessionMethod.driverTransactions,
  )
  payoutSessionMethod?: TaxiPayoutSessionPayoutMethodDetailEntity;

  @Column({ nullable: true })
  payoutSessionMethodId?: number;

  @ManyToOne(() => ShopOrderEntity, (order) => order.driverTransactions)
  shopOrder?: number;

  @Column({ nullable: true })
  shopOrderId?: number;
}
