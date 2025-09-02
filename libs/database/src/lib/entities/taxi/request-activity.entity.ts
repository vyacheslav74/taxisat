import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { RequestActivityType } from '../enums/request-activity-type.enum';
import { TaxiOrderEntity } from './taxi-order.entity';

@Entity('request_activity')
export class RequestActivityEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: RequestActivityType,
  })
  type!: RequestActivityType;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => TaxiOrderEntity, (request) => request.activities)
  request!: TaxiOrderEntity;

  @Column()
  requestId!: number;
}
