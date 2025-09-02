import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';

import { RiderDeductTransactionType } from './enums/rider-deduct-transaction-type.enum';
import { RiderRechargeTransactionType } from './enums/rider-recharge-transaction-type.enum';
import { TransactionAction } from './enums/transaction-action.enum';
import { TransactionStatus } from './enums/transaction-status.enum';
import { OperatorEntity } from './operator.entity';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { PaymentGatewayEntity } from './payment-gateway.entity';
import { CustomerEntity } from './customer.entity';
import { GiftCodeEntity } from './gift-code.entity';
import { SavedPaymentMethodEntity } from './saved-payment-method.entity';
import { ShopOrderEntity } from './shop/shop-order.entity';
import { ParkOrderEntity } from './parking/park-order.entity';

@Entity('rider_transaction')
export class RiderTransactionEntity {
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
    enum: RiderDeductTransactionType,
    nullable: true,
  })
  deductType?: RiderDeductTransactionType;

  @Column('enum', {
    enum: RiderRechargeTransactionType,
    nullable: true,
  })
  rechargeType?: RiderRechargeTransactionType;

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

  @ManyToOne(() => CustomerEntity, (rider) => rider.transactions)
  rider!: CustomerEntity;

  @Column()
  riderId!: number;

  @ManyToOne(() => PaymentGatewayEntity, (gateway) => gateway.riderTransactions)
  paymentGateway?: PaymentGatewayEntity;

  @Column({ nullable: true })
  paymentGatewayId?: number;

  @ManyToOne(
    () => SavedPaymentMethodEntity,
    (savedPaymentMethod) => savedPaymentMethod.transactions,
  )
  savedPaymentMethod?: SavedPaymentMethodEntity;

  @Column({ nullable: true })
  savedPaymentMethodId?: number;

  @ManyToOne(() => OperatorEntity, (operator) => operator.riderTransactions)
  operator?: OperatorEntity;

  @Column({ nullable: true, name: 'operatorId' })
  operatorId?: number;

  @OneToOne(() => GiftCodeEntity, (giftCard) => giftCard.riderTransaction)
  @JoinColumn()
  giftCard?: GiftCodeEntity;

  @Column({ nullable: true })
  giftCardId?: number;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.riderTransactions)
  request?: TaxiOrderEntity;

  @Column({ nullable: true })
  requestId?: number;

  @ManyToOne(() => ShopOrderEntity, (order) => order.riderTransactions)
  shopOrder?: number;

  @Column({ nullable: true })
  shopOrderId?: number;

  @ManyToOne(() => ParkOrderEntity, (order) => order.parkOwnerTransactions)
  parkOrderParkOwner?: ParkOrderEntity;

  @Column({ nullable: true })
  parkOrderParkOwnerId?: number;

  @ManyToOne(() => ParkOrderEntity, (order) => order.customerTransactions)
  parkOrderCustomer?: ParkOrderEntity;

  @Column({ nullable: true })
  parkOrderCustomerId?: number;
}
