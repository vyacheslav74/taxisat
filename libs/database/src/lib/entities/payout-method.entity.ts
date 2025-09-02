import {
  Column,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { MediaEntity } from './media.entity';
import { PayoutMethodType } from './enums/payout-method-type.enum';
import { PayoutAccountEntity } from './payout-account.entity';
import { TaxiPayoutSessionEntity } from './taxi/taxi-payout-session.entity';
import { DriverTransactionEntity } from './taxi/driver-transaction.entity';
import { ParkingTransactionEntity } from './parking/parking-transaction.entity';
import { ShopTransactionEntity } from './shop/shop-transaction.entity';
import { TaxiPayoutSessionPayoutMethodDetailEntity } from './taxi/taxi-payout-session-payout-method-detail.entity';

@Entity('payout_method')
export class PayoutMethodEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({
    default: true,
  })
  enabled!: boolean;

  @Column()
  name!: string;

  @Column()
  currency!: string;

  @Column({
    nullable: true,
  })
  description?: string;

  @Column('enum', {
    enum: PayoutMethodType,
  })
  type!: PayoutMethodType;

  @Column({
    nullable: true,
    type: 'text',
  })
  publicKey?: string;

  @Column({
    nullable: true,
    type: 'text',
  })
  privateKey?: string;

  @Column({ nullable: true, type: 'text' })
  saltKey?: string;

  @Column({
    nullable: true,
    type: 'text',
  })
  merchantId?: string;

  @DeleteDateColumn()
  deletedAt?: Date;

  @OneToOne(() => MediaEntity, (media) => media.payoutMethod, {
    nullable: true,
  })
  @JoinColumn()
  media?: MediaEntity;

  @Column({ nullable: true })
  mediaId?: number;

  @OneToMany(
    () => PayoutAccountEntity,
    (payoutAccount) => payoutAccount.payoutMethod,
  )
  payoutAccounts?: PayoutAccountEntity[];

  @ManyToMany(
    () => TaxiPayoutSessionEntity,
    (payoutSession) => payoutSession.payoutMethods,
  )
  payoutSessions?: TaxiPayoutSessionEntity[];

  @OneToMany(
    () => DriverTransactionEntity,
    (driverTransaction) => driverTransaction.payoutMethod,
  )
  driverTransactions?: DriverTransactionEntity[];

  @OneToMany(
    () => ParkingTransactionEntity,
    (parkingTransaction) => parkingTransaction.payoutMethod,
  )
  parkingTransactions?: ParkingTransactionEntity[];

  @OneToMany(
    () => ShopTransactionEntity,
    (shopTransaction) => shopTransaction.payoutMethod,
  )
  shopTransactions?: ShopTransactionEntity[];

  @OneToMany(
    () => TaxiPayoutSessionPayoutMethodDetailEntity,
    (payoutSessionPayoutMethodDetail) =>
      payoutSessionPayoutMethodDetail.payoutMethod,
  )
  sessions?: TaxiPayoutSessionPayoutMethodDetailEntity;
}
