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
import { PayoutSessionStatus } from '../enums/payout-session-status.enum';
import { OperatorEntity } from '../operator.entity';
import { PayoutMethodEntity } from '../payout-method.entity';
import { ParkingPayoutSessionPayoutMethodDetailEntity } from './parking-payout-session-payout-method-detail.entity';
import { ParkingTransactionEntity } from './parking-transaction.entity';

@Entity('parking_payout_session')
export class ParkingPayoutSessionEntity {
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
    () => ParkingTransactionEntity,
    (parkingTransaction) => parkingTransaction.payoutSession,
  )
  parkingTransactions!: ParkingTransactionEntity[];

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  totalAmount!: number;

  @Column()
  currency!: string;

  @ManyToOne(() => OperatorEntity)
  createdByOperator!: OperatorEntity;

  @Column()
  createdByOperatorId!: number;

  @OneToMany(
    () => ParkingPayoutSessionPayoutMethodDetailEntity,
    (payoutMethodDetail) => payoutMethodDetail.payoutSession,
  )
  payoutMethodDetails?: ParkingPayoutSessionPayoutMethodDetailEntity[];
}
