import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { AdminNotificationType } from './enums/admin-notification-type.enum';
import { TaxiSupportRequestEntity } from './taxi/taxi-support-request.entity';
import { ShopSupportRequestEntity } from './shop/shop-support-request.entity';
import { ParkingSupportRequestEntity } from './parking/parking-support-request.entity';
import { DriverEntity } from './taxi/driver.entity';
import { ShopEntity } from './shop/shop.entity';
import { ParkSpotEntity } from './parking/park-spot.entity';
import { ShopFeedbackEntity } from './shop/shop-feedback.entity';
import { ParkingFeedbackEntity } from './parking/parking-feedback.entity';
import { AppType } from './enums/app-type.enum';
import { OperatorEntity } from './operator.entity';

@Entity('admin_notification')
export class AdminNotificationEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: AdminNotificationType,
  })
  type!: AdminNotificationType;

  @ManyToOne(() => OperatorEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  operator!: OperatorEntity;

  @Column()
  operatorId!: number;

  @Column('enum', {
    enum: AppType,
  })
  appType!: AppType;

  @Column({
    nullable: true,
  })
  readAt?: Date;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => TaxiSupportRequestEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  taxiSupportRequest?: TaxiSupportRequestEntity;

  @Column({
    nullable: true,
  })
  taxiSupportRequestId?: number;

  @ManyToOne(() => ShopSupportRequestEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  shopSupportRequest?: ShopSupportRequestEntity;

  @Column({
    nullable: true,
  })
  shopSupportRequestId?: number;

  @ManyToOne(() => ParkingSupportRequestEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  parkingSupportRequest?: ParkingSupportRequestEntity;

  @Column({
    nullable: true,
  })
  parkingSupportRequestId?: number;

  @ManyToOne(() => DriverEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  driverPendingVerification?: DriverEntity;

  @Column({
    nullable: true,
  })
  driverPendingVerificationId?: number;

  @ManyToOne(() => ShopEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  shopPendingVerification?: ShopEntity;

  @Column({
    nullable: true,
  })
  shopPendingVerificationId?: number;

  @ManyToOne(() => ParkSpotEntity, {
    onDelete: 'CASCADE',

    onUpdate: 'NO ACTION',
  })
  parkSpotPendingVerification?: ParkSpotEntity;

  @Column({
    nullable: true,
  })
  parkSpotPendingVerificationId?: number;

  @ManyToOne(() => ShopFeedbackEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  shopReviewPendingApproval?: ShopFeedbackEntity;

  @Column({
    nullable: true,
  })
  shopReviewPendingApprovalId?: number;

  @ManyToOne(() => ParkingFeedbackEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  parkingReviewPendingApproval?: ParkingFeedbackEntity;

  @Column({
    nullable: true,
  })
  parkingReviewPendingApprovalId?: number;
}
