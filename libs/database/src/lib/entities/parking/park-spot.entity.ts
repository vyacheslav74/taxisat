import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkSpotType } from './enums/park-spot-type.enum';
import { PointTransformer } from '../../transformers/point.transformer';
import { ParkSpotCarSize } from './enums/park-spot-car-size.enum';
import { MediaEntity } from '../media.entity';
import { ParkOrderEntity } from './park-order.entity';
import { ParkSpotFacility } from './enums/park-spot-facility.enum';
import { ParkingFeedbackEntity } from './parking-feedback.entity';
import { Point } from '../../interfaces/point';
import { CustomerEntity } from '../customer.entity';
import { ParkSpotNoteEntity } from './park-spot-note.entity';
import { ParkSpotStatus } from './enums/park-spot-status.enum';
import { WeekdayScheduleDTO } from '../../interfaces/weekday-schedule.dto';
import { WeeklyScheduleTransformer } from '../../transformers/weekly-schedule.transformer';
import { ParkingTransactionEntity } from './parking-transaction.entity';
import { RatingAggregate } from '../fragments/rating-aggregate';

@Entity('park_spot')
export class ParkSpotEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: ParkSpotStatus,
    default: ParkSpotStatus.Pending,
    nullable: false,
  })
  status!: ParkSpotStatus;

  @Column('enum', {
    enum: ParkSpotType,
    default: ParkSpotType.PERSONAL,
    nullable: false,
  })
  type!: ParkSpotType;

  @ManyToOne(() => CustomerEntity, (customer) => customer.parkSpots)
  owner!: CustomerEntity;

  @Column()
  ownerId!: number;

  @Column({
    nullable: true,
  })
  phoneNumber?: string;

  @Column({
    nullable: true,
  })
  email?: string;

  @Column({
    nullable: true,
  })
  name?: string;

  @OneToOne(() => MediaEntity, { nullable: true })
  @JoinColumn()
  mainImage?: MediaEntity;

  @Column({
    nullable: true,
  })
  mainImageId?: number;

  @Column({
    nullable: true,
  })
  lastActivityAt?: Date;

  @Column('point', {
    transformer: new PointTransformer(),
  })
  location!: Point;

  @Column({
    nullable: true,
  })
  address?: string;

  @Column(() => RatingAggregate)
  ratingAggregate!: RatingAggregate;

  @Column('text', {
    transformer: new WeeklyScheduleTransformer(),
    nullable: true,
  })
  weeklySchedule!: WeekdayScheduleDTO[];

  @Column({
    nullable: true,
  })
  openHour?: string;

  @Column({
    nullable: true,
  })
  closeHour?: string;

  @Column({
    default: true,
  })
  acceptNewRequest!: boolean;

  @Column({
    default: true,
  })
  acceptExtendRequest!: boolean;

  @Column('enum', {
    nullable: true,
    enum: ParkSpotCarSize,
  })
  carSize?: ParkSpotCarSize;

  @Column('float', {
    nullable: true,
    default: '0.00',
    precision: 12,
    scale: 2,
  })
  carPrice?: number;

  @Column('int', {
    default: 0,
  })
  carSpaces!: number;

  @Column('float', {
    nullable: true,
    default: '0.00',
    precision: 12,
    scale: 2,
  })
  bikePrice?: number;

  @Column('int', {
    default: 0,
  })
  bikeSpaces!: number;

  @Column('float', {
    nullable: true,
    default: '0.00',
    precision: 12,
    scale: 2,
  })
  truckPrice?: number;

  @Column('int', {
    default: 0,
  })
  truckSpaces!: number;

  @Column({
    default: 'USD',
  })
  currency!: string;

  @Column({
    nullable: true,
  })
  description?: string;

  @Column({
    nullable: true,
  })
  operatorName?: string;

  @Column({
    nullable: true,
  })
  operatorPhoneCountryCode?: string;

  @Column({
    nullable: true,
  })
  operatorPhoneNumber?: string;

  @OneToMany(() => MediaEntity, (media) => media.parkSpot)
  images!: MediaEntity[];

  @Column('set', {
    enum: ParkSpotFacility,
    default: [],
  })
  facilities!: ParkSpotFacility[];

  @OneToMany(() => ParkOrderEntity, (order) => order.parkSpot)
  parkOrders!: ParkOrderEntity[];

  @OneToMany(() => ParkingFeedbackEntity, (review) => review.parkSpot)
  feedbacks!: ParkingFeedbackEntity[];

  @OneToMany(() => ParkSpotNoteEntity, (note) => note.parkSpot)
  notes?: ParkSpotNoteEntity;

  @OneToMany(
    () => ParkingTransactionEntity,
    (transaction) => transaction.parkSpot,
  )
  transactions?: ParkingTransactionEntity[];
}
