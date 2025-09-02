import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ProviderDeductTransactionType } from './enums/provider-deduct-transaction-type.enum';
import { ProviderRechargeTransactionType } from './enums/provider-recharge-transaction-type.enum';
import { TransactionAction } from './enums/transaction-action.enum';
import { OperatorEntity } from './operator.entity';
import { PaymentGatewayEntity } from './payment-gateway.entity';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { AppType } from './enums/app-type.enum';
import { ProviderExpenseType } from './enums/provider-expense-type.enum';
import { ShopOrderCartEntity } from './shop/shop-order-cart.entity';
import { ParkOrderEntity } from './parking/park-order.entity';

@Entity('admin_transaction')
export class ProviderTransactionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn({ name: 'transactionTime' })
  createdAt!: Date;

  // @Column('enum', {
  //     enum: TransactionStatus,
  //     default: TransactionStatus.Processing
  // })
  // status!: TransactionStatus;

  @Column('enum', { enum: TransactionAction })
  action!: TransactionAction;

  @Column('enum', {
    enum: AppType,
    nullable: true,
  })
  appType?: AppType;

  @Column('enum', {
    enum: ProviderDeductTransactionType,
    nullable: true,
  })
  deductType?: ProviderDeductTransactionType;

  @Column('enum', {
    enum: ProviderRechargeTransactionType,
    nullable: true,
  })
  rechargeType?: ProviderRechargeTransactionType;

  @Column('enum', {
    enum: ProviderExpenseType,
    nullable: true,
  })
  expenseType?: ProviderExpenseType;

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  amount!: number;

  @Column('char', { length: 3 })
  currency!: string;

  @Column({ nullable: true, name: 'documentNumber' })
  refrenceNumber?: string;

  @Column({ nullable: true, name: 'details' })
  description?: string;

  @ManyToOne(() => OperatorEntity, (operator) => operator.providerTransactions)
  operator?: OperatorEntity;

  @Column({ nullable: true })
  operatorId?: number;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.providerTransactions, {
    onDelete: 'CASCADE',
  })
  request?: TaxiOrderEntity;

  @Column({ nullable: true })
  requestId?: number;

  @ManyToOne(() => ShopOrderCartEntity, (cart) => cart.providerTransactions)
  shopOrderCart?: ShopOrderCartEntity;

  @Column({ nullable: true })
  shopOrderCartId?: number;

  @ManyToOne(
    () => PaymentGatewayEntity,
    (gateway) => gateway.adminTransactions,
    { onDelete: 'CASCADE' },
  )
  paymentGateway?: PaymentGatewayEntity;

  @Column({ nullable: true })
  paymentGatewayId?: number;

  @ManyToOne(
    () => ParkOrderEntity,
    (parkOrder) => parkOrder.providerTransactions,
  )
  parkOrder?: ParkOrderEntity;

  @Column({
    nullable: true,
  })
  parkOrderId?: number;
}
