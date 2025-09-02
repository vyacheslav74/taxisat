import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { OperatorEntity } from '../operator.entity';
import { DriverEntity } from './driver.entity';

@Entity('driver_note')
export class DriverNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => DriverEntity, (driver) => driver.notes)
  driver!: DriverEntity;

  @Column()
  driverId!: number;

  @Column()
  note!: string;

  @ManyToOne(() => OperatorEntity)
  staff!: OperatorEntity;

  @Column()
  staffId!: number;
}
