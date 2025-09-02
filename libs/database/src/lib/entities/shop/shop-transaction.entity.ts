import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { TransactionType } from '../enums/transaction-type.enum';
import { ShopTransactionDebitType } from './enums/shop-transaction-debit-type.enum';
import { ShopTransactionCreditType } from './enums/shop-transaction-credit-type.enum';
import { ShopEntity } from './shop.entity';
import { SavedPaymentMethodEntity } from '../saved-payment-method.entity';
import { PaymentGatewayEntity } from '../payment-gateway.entity';
import { OperatorEntity } from '../operator.entity';
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { TransactionStatus } from '../enums/transaction-status.enum';
import { PayoutAccountEntity } from '../payout-account.entity';
import { PayoutMethodEntity } from '../payout-method.entity';
import { ShopPayoutSessionEntity } from './shop-payout-session.entity';
import { ShopPayoutSessionPayoutMethodDetailEntity } from './shop-payout-session-payout-method-detail.entity';

@Entity('shop_transaction')
export class ShopTransactionEntity {
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
    enum: ShopTransactionDebitType,
    nullable: true,
  })
  debitType?: ShopTransactionDebitType;

  @Column('enum', {
    enum: ShopTransactionCreditType,
    nullable: true,
  })
  creditType?: ShopTransactionCreditType;

  @Column('char', {
    length: '3',
  })
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

  @ManyToOne(() => ShopEntity)
  shop?: ShopEntity;

  @Column()
  shopId!: number;

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
    () => ShopOrderCartEntity,
    (orderCart) => orderCart.shopTransactions,
  )
  shopOrderCart?: ShopOrderCartEntity;

  @Column({
    nullable: true,
  })
  shopOrderCartId?: number;

  @ManyToOne(
    () => ShopPayoutSessionEntity,
    (session) => session.shopTransactions,
  )
  payoutSession?: ShopPayoutSessionEntity;

  @Column({ nullable: true })
  payoutSessionId?: number;

  @ManyToOne(
    () => PayoutAccountEntity,
    (payoutAccount) => payoutAccount.shopTransactions,
  )
  payoutAccount?: PayoutAccountEntity;

  @Column({ nullable: true })
  payoutAccountId?: number;

  @ManyToOne(
    () => PayoutMethodEntity,
    (payoutMethod) => payoutMethod.shopTransactions,
  )
  payoutMethod?: PayoutMethodEntity;

  @Column({ nullable: true })
  payoutMethodId?: number;

  @ManyToOne(
    () => ShopPayoutSessionPayoutMethodDetailEntity,
    (payoutSessionMethod) => payoutSessionMethod.shopTransactions,
  )
  payoutSessionMethod?: ShopPayoutSessionPayoutMethodDetailEntity;

  @Column({ nullable: true })
  payoutSessionMethodId?: number;
}
