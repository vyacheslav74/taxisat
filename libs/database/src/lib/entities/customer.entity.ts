import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';

import { CouponEntity } from './coupon.entity';
import { Gender } from './enums/gender.enum';
import { RiderStatus } from './enums/rider-status.enum';
import { MediaEntity } from './media.entity';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { RiderAddressEntity } from './rider-address.entity';
import { RiderTransactionEntity } from './rider-transaction.entity';
import { RiderWalletEntity } from './rider-wallet.entity';
import { ParkOrderEntity } from './parking/park-order.entity';
import { RiderReviewEntity } from './taxi/rider-review.entity';
import { DriverEntity } from './taxi/driver.entity';
import { SavedPaymentMethodEntity } from './saved-payment-method.entity';
import { CustomerSessionEntity } from './customer-session.entity';
import { CustomerNoteEntity } from './customer-note.entity';
import { ShopOrderEntity } from './shop/shop-order.entity';
import { ShopFeedbackEntity } from './shop/shop-feedback.entity';
import { ParkSpotEntity } from './parking/park-spot.entity';
import { CampaignCodeEntity } from './campaign-code.entity';
import { ParkingWalletEntity } from './parking/parking-wallet.entity';
import { PayoutAccountEntity } from './payout-account.entity';
import { ParkingLoginSessionEntity } from './parking/parking-login-session.entity';
import { CustomerFavoriteProductEntity } from './shop/customer-favorite-product.entity';
import { ParkingTransactionEntity } from './parking/parking-transaction.entity';

@Entity('rider')
export class CustomerEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: RiderStatus,
    default: RiderStatus.Enabled,
  })
  status!: RiderStatus;

  @Column({ nullable: true })
  firstName?: string;

  // @Column({ nullable: true })
  // avatarUrl?: string;

  @Column({ nullable: true })
  lastName?: string;

  @Column({ nullable: true, type: 'varchar', length: 5 })
  countryIso?: string;

  @Column('bigint', {
    unique: true,
  })
  mobileNumber!: string;

  @CreateDateColumn()
  registrationTimestamp!: Date;

  @Column({ nullable: true })
  lastActivityAt?: Date;

  @Column({ nullable: true })
  email?: string;

  @Column('enum', {
    enum: Gender,
    nullable: true,
  })
  gender?: Gender;

  @Column('varchar', {
    nullable: true,
  })
  address?: string;

  @Column({
    nullable: true,
  })
  isResident?: boolean;

  @Column({
    nullable: true,
  })
  idNumber?: string;

  @Column({
    nullable: true,
  })
  password?: string;

  @Column({ nullable: true })
  notificationPlayerId?: string;

  @DeleteDateColumn()
  deletedAt?: Date;

  @OneToMany(
    () => PayoutAccountEntity,
    (payoutAccount) => payoutAccount.customer,
  )
  payoutAccounts?: PayoutAccountEntity[];

  @OneToOne(() => PayoutAccountEntity)
  @JoinColumn()
  defaultPayoutAccount?: PayoutAccountEntity;

  @Column({ nullable: true })
  defaultPayoutAccountId?: number;

  @OneToMany(() => RiderAddressEntity, (address) => address.rider)
  addresses!: RiderAddressEntity[];

  @OneToOne(() => MediaEntity, (media) => media.rider)
  @JoinColumn()
  media?: MediaEntity;

  @Column({ nullable: true })
  mediaId?: number;

  @Column('int', {
    nullable: true,
  })
  presetAvatarNumber?: number;

  @OneToMany(() => TaxiOrderEntity, (order) => order.rider)
  orders!: TaxiOrderEntity[];

  @OneToMany(() => RiderWalletEntity, (wallet) => wallet.rider)
  wallets!: RiderWalletEntity[];

  @ManyToMany(() => DriverEntity, (driver) => driver.ridersFavorited)
  @JoinTable()
  favoriteDrivers!: DriverEntity[];

  @ManyToMany(() => DriverEntity, (driver) => driver.ridersBlocked)
  @JoinTable()
  blockedDrivers!: DriverEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (riderTransaction) => riderTransaction.rider,
    { onDelete: 'CASCADE', onUpdate: 'RESTRICT' },
  )
  transactions!: RiderTransactionEntity[];

  @OneToMany(
    () => ParkingTransactionEntity,
    (transaction) => transaction.customer,
  )
  parkingTransactions!: ParkingTransactionEntity[];

  @ManyToMany(() => CouponEntity, (coupon) => coupon.riders)
  @JoinTable()
  coupons!: CouponEntity[];

  @OneToMany(
    () => SavedPaymentMethodEntity,
    (savedPaymentMethod) => savedPaymentMethod.rider,
  )
  savedPaymentMethods!: SavedPaymentMethodEntity[];

  @OneToOne(() => SavedPaymentMethodEntity)
  @JoinColumn()
  defaultSavedPaymentMethod?: SavedPaymentMethodEntity;

  @Column({ nullable: true })
  defaultSavedPaymentMethodId?: number;

  @OneToMany(() => RiderReviewEntity, (review) => review.rider)
  reviewsForRider!: RiderReviewEntity[];

  @OneToMany(() => ParkOrderEntity, (parkOrder) => parkOrder.carOwner)
  orderedParkOrders!: ParkOrderEntity[];

  @OneToMany(() => ParkOrderEntity, (parkOrder) => parkOrder.spotOwner)
  ownedParkOrders?: ParkOrderEntity[];

  @OneToMany(() => CustomerSessionEntity, (session) => session.customer)
  sessions?: CustomerSessionEntity[];

  @OneToMany(() => ParkingLoginSessionEntity, (session) => session.customer)
  parkingLoginSessions?: ParkingLoginSessionEntity[];

  @OneToMany(() => CustomerNoteEntity, (note) => note.customer)
  notes?: CustomerNoteEntity[];

  @OneToMany(() => ShopOrderEntity, (shopOrder) => shopOrder.customer)
  shopOrders?: ShopOrderEntity[];

  @OneToMany(() => ShopFeedbackEntity, (feedback) => feedback.customer)
  reviews?: ShopFeedbackEntity[];

  @OneToMany(() => ParkSpotEntity, (parkSpot) => parkSpot.owner)
  parkSpots?: ParkSpotEntity[];

  @OneToMany(() => CampaignCodeEntity, (campaignCode) => campaignCode.customer)
  campaignCodes?: CampaignCodeEntity;

  @OneToMany(
    () => ParkingWalletEntity,
    (parkingWallet) => parkingWallet.customer,
  )
  parkingWallets?: ParkingWalletEntity[];

  @OneToMany(
    () => CustomerFavoriteProductEntity,
    (favoriteItem) => favoriteItem.customer,
  )
  favoriteProducts?: CustomerFavoriteProductEntity[];

  @Column({
    default: true,
  })
  pushNotificationShopOrderStatus!: boolean;

  @Column({
    default: true,
  })
  pushNotificationShopSupportRequest!: boolean;

  @Column({
    default: true,
  })
  pushNotificationShopAnnouncements!: boolean;
}
