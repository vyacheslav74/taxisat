import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { RiderAddressEntity } from '../rider-address.entity';
import { DeliveryMethod } from './enums/delivery-method.enum';
import { PaymentMode } from '../enums/payment-mode.enum';
import { PaymentGatewayEntity } from '../payment-gateway.entity';
import { CustomerEntity } from '../customer.entity';
import { SavedPaymentMethodEntity } from '../saved-payment-method.entity';
import { ShopOrderStatus } from './enums/shop-order-status.enum';
import { Field } from '@nestjs/graphql';
import { ShopSupportRequestEntity } from './shop-support-request.entity';
import { ShopOrderNoteEntity } from './shop-order-note.entity';
import { DriverTransactionEntity } from '../taxi/driver-transaction.entity';
import { RiderTransactionEntity } from '../rider-transaction.entity';
import { ShopOrderStatusHistoryEntity } from './shop-order-status-history.entity';
import { Point } from '../../interfaces/point';
import { MultipointTransformer } from '../../transformers/multipoint.transformer';
import { OrderPaymentStatus } from '../enums/order-payment-status.enum';
import { TaxiOrderEntity } from '../taxi/taxi-order.entity';
import { ShopCustomerSupportRequestEntity } from './shop-customer-support-request.entity';

@Entity('shop_order')
export class ShopOrderEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Field(() => ShopOrderStatus)
  status!: ShopOrderStatus;

  @Column()
  currency!: string;

  @ManyToOne(() => RiderAddressEntity)
  deliveryAddress!: RiderAddressEntity;

  @Column()
  deliveryAddressId!: number;

  @ManyToOne(() => CustomerEntity, (customer) => customer.shopOrders)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @Column('enum', {
    enum: DeliveryMethod,
  })
  deliveryMethod!: DeliveryMethod;

  @Column('enum', {
    nullable: true,
    enum: PaymentMode,
  })
  paymentMethod!: PaymentMode;

  @Column('enum', {
    enum: OrderPaymentStatus,
    default: OrderPaymentStatus.Pending,
  })
  paymentStatus!: OrderPaymentStatus;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  subTotal!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  deliveryFee!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  tax!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  discount!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  serviceFee!: number;

  @Column('multipoint', {
    transformer: new MultipointTransformer(),
    nullable: true,
  })
  deliveryDirections?: Point[];

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  total!: number;

  @Column({ nullable: true })
  paymentGatewayId?: number;

  @Column({ nullable: true })
  estimatedDeliveryTime?: Date;

  @Column({ nullable: true })
  fullfillmentTime?: Date;

  @ManyToOne(() => TaxiOrderEntity)
  expressDelivery?: TaxiOrderEntity;

  @Column({
    nullable: true,
  })
  expressDeliveryOrderId?: number;

  @ManyToOne(() => PaymentGatewayEntity)
  paymentGateway?: PaymentGatewayEntity;

  @Column({ nullable: true })
  savedPaymentMethodId?: number;

  @ManyToOne(() => SavedPaymentMethodEntity)
  savedPaymentMethod?: SavedPaymentMethodEntity;

  @OneToMany(() => ShopOrderCartEntity, (cart) => cart.order)
  carts?: ShopOrderCartEntity[];

  @OneToMany(() => ShopSupportRequestEntity, (activity) => activity.order)
  supportRequests?: ShopSupportRequestEntity[];

  @OneToMany(() => ShopOrderNoteEntity, (note) => note.order)
  notes?: ShopOrderNoteEntity[];

  @OneToMany(
    () => DriverTransactionEntity,
    (transaction) => transaction.shopOrder,
  )
  driverTransactions?: DriverTransactionEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (transaction) => transaction.shopOrder,
  )
  riderTransactions?: RiderTransactionEntity[];

  @OneToMany(
    () => ShopOrderStatusHistoryEntity,
    (statusHistory) => statusHistory.order,
  )
  statusHistories?: ShopOrderStatusHistoryEntity[];

  @OneToMany(
    () => ShopCustomerSupportRequestEntity,
    (supportRequest) => supportRequest.order,
  )
  customerSupportRequests?: ShopCustomerSupportRequestEntity[];
}
