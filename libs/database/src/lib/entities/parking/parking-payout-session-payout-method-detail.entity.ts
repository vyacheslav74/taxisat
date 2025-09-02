import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { PayoutMethodEntity } from '../payout-method.entity';
import { PayoutSessionStatus } from '../enums/payout-session-status.enum';
import { ParkingPayoutSessionEntity } from './parking-payout-session.entity';
import { ParkingTransactionEntity } from './parking-transaction.entity';

@Entity('parking_payout_session_payout_method_detail')
export class ParkingPayoutSessionPayoutMethodDetailEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(
    () => ParkingPayoutSessionEntity,
    (payoutSession) => payoutSession.payoutMethodDetails,
  )
  payoutSession?: ParkingPayoutSessionEntity;

  @Column()
  payoutSessionId!: number;

  @ManyToOne(() => PayoutMethodEntity, (payoutMethod) => payoutMethod.sessions)
  payoutMethod?: PayoutMethodEntity;

  @Column()
  payoutMethodId!: number;

  @Column('enum', {
    enum: PayoutSessionStatus,
    default: PayoutSessionStatus.PENDING,
  })
  status!: PayoutSessionStatus;

  @OneToMany(
    () => ParkingTransactionEntity,
    (parkingTransaction) => parkingTransaction.payoutSessionMethod,
  )
  parkingTransactions?: ParkingTransactionEntity[];
}
