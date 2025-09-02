import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { TaxiOrderEntity } from './taxi-order.entity';
import { OperatorEntity } from '../operator.entity';

@Entity('taxi_order_note')
export class TaxiOrderNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.notes)
  order!: TaxiOrderEntity;

  @Column()
  orderId!: number;

  @Column()
  note!: string;

  @ManyToOne(() => OperatorEntity)
  staff!: OperatorEntity;

  @Column()
  staffId!: number;
}
