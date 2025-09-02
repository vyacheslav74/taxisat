import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  ManyToOne,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';

import { TaxiSupportRequestActivityEntity } from './taxi/taxi-support-request-activity.entity';
import { DriverTransactionEntity } from './taxi/driver-transaction.entity';
import { EnabledNotification } from './enums/enabled-notification.enum';
import { FleetTransactionEntity } from './taxi/fleet-transaction.entity';
import { FleetEntity } from './taxi/fleet.entity';
import { MediaEntity } from './media.entity';
import { OperatorRoleEntity } from './operator-role.entity';
import { ProviderTransactionEntity } from './provider-transaction.entity';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { RiderTransactionEntity } from './rider-transaction.entity';
import { SOSActivityEntity } from './taxi/sos-activity.entity';
import { TaxiPayoutSessionEntity } from './taxi/taxi-payout-session.entity';
import { GiftBatchEntity } from './gift-batch.entity';
import { CustomerNoteEntity } from './customer-note.entity';
import { OperatorSessionEntity } from './operator-session.entity';
import { TaxiSupportRequestEntity } from './taxi/taxi-support-request.entity';
import { ShopSupportRequestEntity } from './shop/shop-support-request.entity';
import { ShopCustomerSupportRequestEntity } from './shop/shop-customer-support-request.entity';

@Entity('operator')
export class OperatorEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn({ nullable: true })
  createdAt?: Date;

  @UpdateDateColumn({ nullable: true })
  updatedAt?: Date;

  @DeleteDateColumn({ nullable: true })
  deletedAt?: Date;

  @Column({ nullable: true })
  firstName?: string;

  @Column({ nullable: true })
  lastName?: string;

  @Column({ unique: true })
  userName!: string;

  @Column({ default: 'admin' })
  password!: string;

  @Column('bigint', {
    nullable: true,
    unique: true,
  })
  mobileNumber?: string;

  @Column('set', {
    enum: EnabledNotification,
    default: [
      EnabledNotification.SupportRequest,
      EnabledNotification.SOS,
      EnabledNotification.UserPendingVerification,
    ],
  })
  enabledNotifications!: EnabledNotification[];

  @Column({ nullable: true })
  lastActivity?: Date;

  @Column({ default: false })
  isBlocked!: boolean;

  @Column({ nullable: true })
  email?: string;

  @Column({ nullable: true })
  address?: string;

  @OneToOne(() => MediaEntity, (media) => media.operator)
  @JoinColumn()
  media?: MediaEntity;

  @Column({ nullable: true })
  mediaId?: number;

  @ManyToOne(() => OperatorRoleEntity, (role) => role.operators)
  role?: OperatorRoleEntity;

  @Column({ nullable: true })
  roleId?: number;

  @ManyToOne(() => FleetEntity, (fleet) => fleet.operators)
  fleet?: FleetEntity;

  @OneToMany(() => TaxiOrderEntity, (request) => request.operator, {
    onDelete: 'RESTRICT',
    onUpdate: 'RESTRICT',
  })
  requests!: TaxiOrderEntity[];

  @OneToMany(
    () => TaxiSupportRequestActivityEntity,
    (activity) => activity.actor,
  )
  complaintActivities!: TaxiSupportRequestActivityEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (riderTransaction) => riderTransaction.operator,
  )
  riderTransactions!: RiderTransactionEntity[];

  @OneToMany(
    () => DriverTransactionEntity,
    (driverTransaction) => driverTransaction.operator,
  )
  driverTransactions!: DriverTransactionEntity[];

  @OneToMany(
    () => FleetTransactionEntity,
    (fleetTransaction) => fleetTransaction.operator,
  )
  fleetTransactions!: FleetTransactionEntity[];

  @OneToMany(
    () => ProviderTransactionEntity,
    (providerTransaction) => providerTransaction.operator,
  )
  providerTransactions!: ProviderTransactionEntity[];

  @OneToMany(() => SOSActivityEntity, (sosActivity) => sosActivity.operator)
  sosActivities!: SOSActivityEntity[];

  @OneToMany(
    () => TaxiPayoutSessionEntity,
    (payoutSession) => payoutSession.createdByOperator,
  )
  taxiPayoutSessionsCreated!: TaxiPayoutSessionEntity[];

  @OneToMany(() => GiftBatchEntity, (gift) => gift.createdByOperator)
  giftBatchesCreated?: GiftBatchEntity[];

  @OneToMany(() => CustomerNoteEntity, (note) => note.createdBy)
  customerNotes?: CustomerNoteEntity[];

  @OneToMany(() => OperatorSessionEntity, (session) => session.operator)
  sessions?: OperatorSessionEntity[];

  @ManyToMany(
    () => TaxiSupportRequestEntity,
    (complaint) => complaint.assignedToStaffs,
  )
  assignedTaxiSupportRequests?: TaxiSupportRequestEntity[];

  @ManyToMany(
    () => ShopSupportRequestEntity,
    (complaint) => complaint.assignedToStaffs,
  )
  assignedShopSupportRequests?: ShopSupportRequestEntity[];

  @ManyToMany(
    () => ShopSupportRequestEntity,
    (complaint) => complaint.assignedToStaffs,
  )
  assignedParkingSupportRequests?: ShopSupportRequestEntity[];

  @ManyToMany(
    () => ShopCustomerSupportRequestEntity,
    (complaint) => complaint.assignedToStaffs,
  )
  assignedShopCustomerSupportRequests?: ShopCustomerSupportRequestEntity[];
}
