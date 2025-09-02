import {
  Column,
  CreateDateColumn,
  Entity,
  Index,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { TransactionStatus } from '../enums/transaction-status.enum';
import { TransactionType } from '../enums/transaction-type.enum';
import { ParkingTransactionDebitType } from './enums/parking-transaction-debit-type.enum';
import { ParkingTransactionCreditType } from './enums/parking-transaction-credit-type.enum';
import { CustomerEntity } from '../customer.entity';
import { SavedPaymentMethodEntity } from '../saved-payment-method.entity';
import { PaymentGatewayEntity } from '../payment-gateway.entity';
import { OperatorEntity } from '../operator.entity';
import { ParkOrderEntity } from './park-order.entity';
import { PayoutMethodEntity } from '../payout-method.entity';
import { PayoutAccountEntity } from '../payout-account.entity';
import { ParkingPayoutSessionPayoutMethodDetailEntity } from './parking-payout-session-payout-method-detail.entity';
import { ParkingPayoutSessionEntity } from './parking-payout-session.entity';
import { ParkSpotEntity } from './park-spot.entity';

@Entity('parking_transaction')
export class ParkingTransactionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column()
  transactionDate!: Date;

  @Column('enum', {
    enum: TransactionStatus,
    default: TransactionStatus.Processing,
  })
  status!: TransactionStatus;

  @Column('enum', {
    enum: TransactionType,
  })
  type!: TransactionType;

  @Column('enum', {
    enum: ParkingTransactionDebitType,
    nullable: true,
  })
  debitType?: ParkingTransactionDebitType;

  @Column('enum', {
    enum: ParkingTransactionCreditType,
    nullable: true,
  })
  creditType?: ParkingTransactionCreditType;

  @Column('char', {
    length: '3',
  })
  @Index()
  currency!: string;

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  amount!: number;

  @Column({
    nullable: true,
  })
  documentNumber?: string;

  @Column({
    nullable: true,
  })
  description?: string;

  @ManyToOne(() => CustomerEntity)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @ManyToOne(() => SavedPaymentMethodEntity)
  paymentMethod?: SavedPaymentMethodEntity;

  @Column({
    nullable: true,
  })
  paymentMethodId?: number;

  @ManyToOne(() => PaymentGatewayEntity)
  paymentGateway?: PaymentGatewayEntity;

  @Column({
    nullable: true,
  })
  paymentGatewayId?: number;

  @ManyToOne(() => OperatorEntity)
  staff?: OperatorEntity;

  @Column({
    nullable: true,
  })
  staffId?: number;

  @ManyToOne(
    () => ParkOrderEntity,
    (parkOrder) => parkOrder.parkingTransactions,
  )
  parkOrder?: ParkOrderEntity;

  @Column({
    nullable: true,
  })
  parkOrderId?: number;

  @ManyToOne(
    () => ParkingPayoutSessionEntity,
    (session) => session.parkingTransactions,
  )
  payoutSession?: ParkingPayoutSessionEntity;

  @Column({ nullable: true })
  payoutSessionId?: number;

  @ManyToOne(
    () => PayoutAccountEntity,
    (payoutAccount) => payoutAccount.parkingTransactions,
  )
  payoutAccount?: PayoutAccountEntity;

  @Column({ nullable: true })
  payoutAccountId?: number;

  @ManyToOne(
    () => PayoutMethodEntity,
    (payoutMethod) => payoutMethod.parkingTransactions,
  )
  payoutMethod?: PayoutMethodEntity;

  @Column({ nullable: true })
  payoutMethodId?: number;

  @ManyToOne(
    () => ParkingPayoutSessionPayoutMethodDetailEntity,
    (payoutSessionMethod) => payoutSessionMethod.parkingTransactions,
  )
  payoutSessionMethod?: ParkingPayoutSessionPayoutMethodDetailEntity;

  @Column({ nullable: true })
  payoutSessionMethodId?: number;

  @ManyToOne(() => ParkSpotEntity, (parkSpot) => parkSpot.transactions)
  parkSpot?: ParkSpotEntity;

  @Column({
    nullable: true,
  })
  parkSpotId?: number;
}
