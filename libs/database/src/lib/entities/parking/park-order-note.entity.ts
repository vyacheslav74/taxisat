import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkOrderEntity } from './park-order.entity';
import { OperatorEntity } from '../operator.entity';

@Entity('park_order_note')
export class ParkOrderNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column()
  parkOrderId!: number;

  @ManyToOne(() => ParkOrderEntity, (parkOrder) => parkOrder.notes)
  parkOrder?: ParkOrderEntity;

  @Column('text')
  note!: string;

  @ManyToOne(() => OperatorEntity)
  staff?: OperatorEntity;

  @Column()
  staffId!: number;
}
