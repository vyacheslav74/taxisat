import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { PayoutMethodEntity } from '../payout-method.entity';
import { PayoutSessionStatus } from '../enums/payout-session-status.enum';
import { DriverTransactionEntity } from './driver-transaction.entity';
import { TaxiPayoutSessionEntity } from './taxi-payout-session.entity';

@Entity('payout_session_payout_method_detail')
export class TaxiPayoutSessionPayoutMethodDetailEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(
    () => TaxiPayoutSessionEntity,
    (payoutSession) => payoutSession.payoutMethodDetails,
  )
  payoutSession?: TaxiPayoutSessionEntity;

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
    () => DriverTransactionEntity,
    (driverTransaction) => driverTransaction.payoutSessionMethod,
  )
  driverTransactions?: DriverTransactionEntity[];
}
