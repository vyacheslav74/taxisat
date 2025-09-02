import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CustomerEntity } from './customer.entity';
import { OperatorEntity } from './operator.entity';

@Entity('customer_note')
export class CustomerNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => CustomerEntity, (customer) => customer.notes)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @Column('text')
  note!: string;

  @ManyToOne(() => OperatorEntity, (operator) => operator.customerNotes)
  createdBy?: OperatorEntity;

  @Column()
  createdById!: number;
}
