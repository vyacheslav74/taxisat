import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Point } from '../../interfaces/point';
import { MultipointTransformer } from '../../transformers/multipoint.transformer';
import { TaxiSupportRequestEntity } from './taxi-support-request.entity';
import { CouponEntity } from '../coupon.entity';
import { DriverTransactionEntity } from './driver-transaction.entity';
import { DriverEntity } from './driver.entity';
import { OrderStatus } from '../enums/order-status.enum';
import { FeedbackEntity } from './feedback.entity';
import { FleetTransactionEntity } from './fleet-transaction.entity';
import { OrderMessageEntity } from './request-message.entity';
import { PaymentGatewayEntity } from '../payment-gateway.entity';
import { ProviderTransactionEntity } from '../provider-transaction.entity';
import { CustomerEntity } from '../customer.entity';
import { RiderTransactionEntity } from '../rider-transaction.entity';
import { ServiceEntity } from './service.entity';
import { OperatorEntity } from '../operator.entity';
import { RequestActivityEntity } from './request-activity.entity';
import { ServiceOptionEntity } from './service-option.entity';
import { SOSEntity } from './sos.entity';
import { FleetEntity } from './fleet.entity';
import { OrderCancelReasonEntity } from './order-cancel-reason.entity';
import { PaymentMode } from '../enums/payment-mode.enum';
import { SavedPaymentMethodEntity } from '../saved-payment-method.entity';
import { RiderReviewEntity } from './rider-review.entity';
import { RegionEntity } from './region.entity';
import { CampaignCodeEntity } from '../campaign-code.entity';
import { TaxiOrderNoteEntity } from './taxi-order-note.entity';
import { TaxiOrderType } from './enums/taxi-order-type.enum';
import { DeliveryContact } from '../fragments/delivery-contact';
import { TaxiOrderShopEntity } from './taxi-order-shop.entity';

@Entity('request')
export class TaxiOrderEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn({ name: 'requestTimestamp' })
  createdOn!: Date;

  @Column('enum', {
    enum: TaxiOrderType,
    default: TaxiOrderType.Ride,
  })
  type!: TaxiOrderType;

  @Column({ nullable: true })
  startTimestamp?: Date;

  @Column({ nullable: true })
  finishTimestamp?: Date;

  @Column('enum', {
    enum: OrderStatus,
    default: OrderStatus.Requested,
  })
  status!: OrderStatus;

  @Column('int', { default: 0 })
  distanceBest!: number;

  @Column('int', { default: 0 })
  durationBest!: number;

  @Column('int', { default: 0 })
  waitMinutes!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  waitCost!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  rideOptionsCost!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  taxCost!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  serviceCost!: number;

  @Column()
  expectedTimestamp!: Date;

  @Column({ nullable: true })
  etaPickup?: Date;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  costBest!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: '0.00',
  })
  costAfterCoupon!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: '0.00',
  })
  tipAmount!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  paidAmount!: number;

  @Column('float', {
    precision: 10,
    default: 0,
    scale: 2,
  })
  providerShare!: number;

  @Column('tinyint', {
    default: -1,
  })
  destinationArrivedTo!: number;

  @ManyToOne(() => RegionEntity, (region) => region.taxiOrders)
  region!: RegionEntity;

  @Column({ nullable: true })
  regionId!: number;

  @OneToMany(() => RequestActivityEntity, (activity) => activity.request)
  activities!: RequestActivityEntity[];

  @Column({
    type: 'text',
    transformer: {
      to(value: string[]): string {
        return value.join('|');
      },
      from(value: string): string[] {
        if (value == null) return [];
        return value.split('|');
      },
    },
  })
  addresses!: string[];

  @Column('multipoint', {
    transformer: new MultipointTransformer(),
  })
  points!: Point[];

  @Column('multipoint', {
    transformer: new MultipointTransformer(),
    nullable: true,
  })
  directions?: Point[];

  @Column('multipoint', {
    transformer: new MultipointTransformer(),
    nullable: true,
  })
  driverDirections?: Point[];

  @Column({
    default: () => 'CURRENT_TIMESTAMP',
  })
  driverLastSeenMessagesAt!: Date;

  @Column({
    default: () => 'CURRENT_TIMESTAMP',
  })
  riderLastSeenMessagesAt!: Date;

  @Column(() => DeliveryContact)
  senderContact?: DeliveryContact;

  @Column(() => DeliveryContact)
  receiverContact?: DeliveryContact;

  @ManyToOne(() => DriverEntity, (driver) => driver.orders)
  driver?: DriverEntity;

  @Column({ nullable: true })
  driverId?: number;

  @ManyToOne(() => CustomerEntity, (rider) => rider.orders)
  rider!: CustomerEntity;

  @Column()
  riderId!: number;

  @ManyToOne(() => CouponEntity, (coupon) => coupon.orders)
  coupon?: CouponEntity;

  @Column({ nullable: true })
  couponId?: number;

  @Column('char', { length: 3 })
  currency!: string;

  @OneToMany(() => OrderMessageEntity, (message) => message.request)
  conversation!: OrderMessageEntity[];

  @Column('enum', {
    enum: PaymentMode,
    nullable: true,
  })
  paymentMode?: PaymentMode;

  @ManyToOne(() => PaymentGatewayEntity, (gateway) => gateway.orders)
  paymentGateway?: PaymentGatewayEntity;

  @Column({ nullable: true })
  paymentGatewayId?: number;

  @ManyToOne(() => SavedPaymentMethodEntity, (method) => method.orders)
  savedPaymentMethod?: SavedPaymentMethodEntity;

  @Column({ nullable: true })
  savedPaymentMethodId?: number;

  @OneToMany(() => TaxiSupportRequestEntity, (complaint) => complaint.request)
  complaints!: TaxiSupportRequestEntity[];

  @ManyToOne(() => ServiceEntity, (service) => service.requests)
  service!: ServiceEntity;

  @Column()
  serviceId!: number;

  @ManyToOne(() => OperatorEntity, (operator) => operator.requests, {
    onDelete: 'CASCADE',
  })
  operator?: OperatorEntity;

  @Column({ nullable: true })
  operatorId?: number;

  @ManyToOne(() => FleetEntity, (fleet) => fleet.requests, {
    onDelete: 'SET NULL',
  })
  fleet?: FleetEntity;

  @Column({ nullable: true })
  fleetId?: number;

  @OneToMany(
    () => RiderTransactionEntity,
    (riderTransaction) => riderTransaction.request,
  )
  riderTransactions!: RiderTransactionEntity[];

  @OneToMany(
    () => FleetTransactionEntity,
    (fleetTransaction) => fleetTransaction.request,
  )
  fleetTransactions!: FleetTransactionEntity[];

  @OneToOne(() => FeedbackEntity, (feedback) => feedback.request)
  review?: FeedbackEntity;

  @OneToMany(
    () => DriverTransactionEntity,
    (transaction) => transaction.request,
  )
  driverTransactions!: DriverTransactionEntity[];

  @OneToMany(
    () => ProviderTransactionEntity,
    (transaction) => transaction.request,
  )
  providerTransactions!: ProviderTransactionEntity[];

  @ManyToMany(() => ServiceOptionEntity, (option) => option.requests, {
    onDelete: 'CASCADE',
  })
  @JoinTable()
  options!: ServiceOptionEntity[];

  @OneToMany(() => SOSEntity, (sos) => sos.request)
  sosCalls!: SOSEntity[];

  @ManyToOne(() => OrderCancelReasonEntity, (order) => order.orders)
  cancelReason?: OrderCancelReasonEntity;

  @Column({
    nullable: true,
  })
  cancelReasonId?: number;

  @Column({
    nullable: true,
  })
  cancelReasonNote?: string;

  @OneToOne(() => RiderReviewEntity, (review) => review.request)
  driverReviewForRider?: RiderReviewEntity;

  @ManyToOne(() => RiderReviewEntity, (review) => review.request)
  campaignCode?: CampaignCodeEntity;

  @Column({ nullable: true })
  campaignCodeId?: number;

  @OneToMany(() => TaxiOrderNoteEntity, (note) => note.order)
  notes?: TaxiOrderNoteEntity[];

  @OneToMany(() => TaxiOrderShopEntity, (shop) => shop.taxiOrder)
  shopCarts?: TaxiOrderShopEntity[];
}
