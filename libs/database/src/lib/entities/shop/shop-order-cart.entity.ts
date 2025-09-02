import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ShopOrderEntity } from './shop-order.entity';
import { ShopEntity } from './shop.entity';
import { ShopOrderCartProductEntity } from './shop-order-cart-product.entity';
import { ShopFeedbackEntity } from './shop-feedback.entity';
import { ShopTransactionEntity } from './shop-transaction.entity';
import { ProviderTransactionEntity } from '../provider-transaction.entity';
import { ShopSupportRequestEntity } from './shop-support-request.entity';
import { ShopOrderStatusHistoryEntity } from './shop-order-status-history.entity';
import { CartStatus } from './enums/shop-order-cart-status.enum';
import { OrderFulfillmentMethod } from './enums/order-fulfillment-method';
import { ShopCustomerSupportRequestEntity } from './shop-customer-support-request.entity';

@Entity('shop_order_cart')
export class ShopOrderCartEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => ShopOrderEntity, (order) => order.carts)
  order!: ShopOrderEntity;

  @Column()
  orderId!: number;

  @Column('enum', {
    enum: CartStatus,
    default: CartStatus.New,
  })
  status!: CartStatus;

  @ManyToOne(() => ShopEntity, (order) => order.carts)
  shop!: ShopEntity;

  @Column()
  shopId!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  subtotal!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  shopDeliveryFee!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  tax!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  discount!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  total!: number;

  @Column({
    nullable: true,
  })
  customerDescription?: string;

  @Column({
    nullable: true,
  })
  estimatedPreparationTime?: Date;

  @Column('enum', {
    enum: OrderFulfillmentMethod,
    default: OrderFulfillmentMethod.ShopDelivery,
  })
  fullfillmentMethod!: OrderFulfillmentMethod;

  @OneToMany(() => ShopOrderCartProductEntity, (product) => product.cart)
  products!: ShopOrderCartProductEntity[];

  @ManyToOne(() => ShopFeedbackEntity, (feedback) => feedback.orderCart)
  feedbacks?: ShopFeedbackEntity[];

  @OneToMany(
    () => ShopTransactionEntity,
    (transaction) => transaction.shopOrderCart,
  )
  shopTransactions?: ShopTransactionEntity[];

  @OneToMany(
    () => ProviderTransactionEntity,
    (transaction) => transaction.shopOrderCart,
  )
  providerTransactions?: ProviderTransactionEntity[];

  @OneToMany(
    () => ShopSupportRequestEntity,
    (supportRequest) => supportRequest.cart,
  )
  supportRequests?: ShopSupportRequestEntity[];

  @OneToMany(
    () => ShopOrderStatusHistoryEntity,
    (statusHistory) => statusHistory.orderCart,
  )
  statusHistories?: ShopOrderStatusHistoryEntity[];

  @OneToMany(() => ShopCustomerSupportRequestEntity, (request) => request.cart)
  customerSupportRequests?: ShopCustomerSupportRequestEntity[];
}
