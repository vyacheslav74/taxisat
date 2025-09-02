import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { PayoutMethodEntity } from '../payout-method.entity';
import { PayoutSessionStatus } from '../enums/payout-session-status.enum';
import { ShopPayoutSessionEntity } from './shop-payout-session.entity';
import { ShopTransactionEntity } from './shop-transaction.entity';

@Entity('shop_payout_session_payout_method_detail')
export class ShopPayoutSessionPayoutMethodDetailEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(
    () => ShopPayoutSessionEntity,
    (payoutSession) => payoutSession.payoutMethodDetails,
  )
  payoutSession?: ShopPayoutSessionEntity;

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
    () => ShopTransactionEntity,
    (shopTransaction) => shopTransaction.payoutSessionMethod,
  )
  shopTransactions?: ShopTransactionEntity[];
}
