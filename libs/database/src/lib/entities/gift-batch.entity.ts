import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { GiftCodeEntity } from './gift-code.entity';
import { OperatorEntity } from './operator.entity';

@Entity('gift')
export class GiftBatchEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column()
  name!: string;

  @Column('varchar', {
    length: 3,
  })
  currency!: string;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  amount!: number;

  @Column({
    nullable: true,
  })
  availableFrom?: Date;

  @Column({
    nullable: true,
  })
  expireAt?: Date;

  @ManyToOne(() => OperatorEntity, (operator) => operator.giftBatchesCreated)
  createdByOperator!: OperatorEntity;

  @Column()
  createdByOperatorId!: number;

  @OneToMany(() => GiftCodeEntity, (giftCode) => giftCode.gift)
  giftCodes?: GiftCodeEntity[];
}
