import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  JoinColumn,
  OneToOne,
  DeleteDateColumn,
} from 'typeorm';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { RiderTransactionEntity } from './rider-transaction.entity';
import { PaymentGatewayType } from './enums/payment-gateway-type.enum';
import { ProviderTransactionEntity } from './provider-transaction.entity';
import { MediaEntity } from './media.entity';
import { GatewayToUserEntity } from './gateway-to-user.entity';
import { SavedPaymentMethodEntity } from './saved-payment-method.entity';
import { PayoutAccountEntity } from './payout-account.entity';
import { ParkOrderEntity } from './parking/park-order.entity';

@Entity('payment_gateway')
export class PaymentGatewayEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({
    default: true,
  })
  enabled!: boolean;

  @Column()
  title!: string;

  @Column('enum', {
    enum: PaymentGatewayType,
  })
  type!: PaymentGatewayType;

  @Column({
    nullable: true,
    type: 'text',
  })
  publicKey?: string;

  @Column({
    type: 'text',
  })
  privateKey!: string;

  @Column({ nullable: true, type: 'text' })
  saltKey?: string;

  @Column({
    nullable: true,
    type: 'text',
  })
  merchantId?: string;

  @DeleteDateColumn()
  deletedAt?: Date;

  @OneToOne(() => MediaEntity, (media) => media.paymentGateway, {
    nullable: true,
  })
  @JoinColumn()
  media?: MediaEntity;

  @Column({ nullable: true })
  mediaId?: number;

  @OneToMany(() => TaxiOrderEntity, (order) => order.paymentGateway)
  orders?: TaxiOrderEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (userTransaction) => userTransaction.paymentGateway,
  )
  riderTransactions?: RiderTransactionEntity[];

  @OneToMany(
    () => ProviderTransactionEntity,
    (adminTransaction) => adminTransaction.paymentGateway,
  )
  adminTransactions?: ProviderTransactionEntity[];

  @OneToMany(() => ParkOrderEntity, (order) => order.paymentGateway)
  parkOrders?: ParkOrderEntity[];

  @OneToMany(
    () => GatewayToUserEntity,
    (gatewayToUser) => gatewayToUser.gateway,
  )
  userIds?: GatewayToUserEntity[];

  @OneToMany(
    () => SavedPaymentMethodEntity,
    (savedPaymentMethod) => savedPaymentMethod.paymentGateway,
  )
  savedPaymentMethods!: SavedPaymentMethodEntity[];

  // Deprecated
  @OneToMany(() => PayoutAccountEntity, (payout) => payout.paymentGateway)
  payoutAccounts!: PayoutAccountEntity[];
}
