import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { DriverTransactionEntity } from './driver-transaction.entity';
import { PayoutSessionStatus } from '../enums/payout-session-status.enum';
import { OperatorEntity } from '../operator.entity';
import { PayoutMethodEntity } from '../payout-method.entity';
import { TaxiPayoutSessionPayoutMethodDetailEntity } from './taxi-payout-session-payout-method-detail.entity';

@Entity('payout_session')
export class TaxiPayoutSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  processedAt?: Date;

  @Column({
    nullable: true,
  })
  description?: string;

  @Column({
    default: PayoutSessionStatus.PENDING,
    type: 'enum',
    enum: PayoutSessionStatus,
  })
  status!: PayoutSessionStatus;

  @ManyToMany(
    () => PayoutMethodEntity,
    (payoutMethod) => payoutMethod.payoutSessions,
    { onDelete: 'CASCADE' },
  )
  @JoinTable()
  payoutMethods!: PayoutMethodEntity[];

  @OneToMany(
    () => DriverTransactionEntity,
    (driverTransaction) => driverTransaction.payoutSession,
  )
  driverTransactions!: DriverTransactionEntity[];

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  totalAmount!: number;

  @Column()
  currency!: string;

  @ManyToOne(
    () => OperatorEntity,
    (operator) => operator.taxiPayoutSessionsCreated,
  )
  createdByOperator!: OperatorEntity;

  @Column()
  createdByOperatorId!: number;

  @OneToMany(
    () => TaxiPayoutSessionPayoutMethodDetailEntity,
    (payoutMethodDetail) => payoutMethodDetail.payoutSession,
  )
  payoutMethodDetails?: TaxiPayoutSessionPayoutMethodDetailEntity[];
}
