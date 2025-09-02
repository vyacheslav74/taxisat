import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkSpotEntity } from './park-spot.entity';
import { OperatorEntity } from '../operator.entity';

@Entity('park_spot_note')
export class ParkSpotNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column()
  parkSpotId!: number;

  @ManyToOne(() => ParkSpotEntity, (parkSpot) => parkSpot.notes)
  parkSpot?: ParkSpotEntity;

  @Column('text')
  note!: string;

  @ManyToOne(() => OperatorEntity)
  staff?: OperatorEntity;

  @Column()
  staffId!: number;
}
