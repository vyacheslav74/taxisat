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
import { ShopTransactionEntity } from './shop-transaction.entity';
import { ShopPayoutSessionPayoutMethodDetailEntity } from './shop-payout-session-payout-method-detail.entity';

@Entity('shop_payout_session')
export class ShopPayoutSessionEntity {
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
    () => ShopTransactionEntity,
    (shopTransaction) => shopTransaction.payoutSession,
  )
  shopTransactions!: ShopTransactionEntity[];

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
    () => ShopPayoutSessionPayoutMethodDetailEntity,
    (payoutMethodDetail) => payoutMethodDetail.payoutSession,
  )
  payoutMethodDetails?: ShopPayoutSessionPayoutMethodDetailEntity[];
}
