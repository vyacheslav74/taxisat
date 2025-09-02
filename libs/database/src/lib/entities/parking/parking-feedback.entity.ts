import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkingFeedbackParameterEntity } from './parking-feedback-parameter.entity';
import { ParkSpotEntity } from './park-spot.entity';
import { ParkOrderEntity } from './park-order.entity';
import { ReviewStatus } from '../enums/review.status.enum';
import { CustomerEntity } from '../customer.entity';

@Entity('parking_feedback')
export class ParkingFeedbackEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('float')
  score!: number;

  @Column()
  comment!: string;

  @Column('enum', {
    enum: ReviewStatus,
    default: ReviewStatus.Pending,
  })
  status!: ReviewStatus;

  @ManyToOne(() => ParkSpotEntity, (parkSpot) => parkSpot.feedbacks)
  parkSpot!: ParkSpotEntity;

  @Column()
  parkSpotId!: number;

  @ManyToOne(() => CustomerEntity)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @ManyToOne(() => ParkOrderEntity, (order) => order.feedbacks)
  @JoinColumn()
  order?: ParkOrderEntity;

  @Column()
  orderId!: number;

  @ManyToMany(
    () => ParkingFeedbackParameterEntity,
    (parameter) => parameter.feedbacks,
  )
  @JoinTable()
  parameters!: ParkingFeedbackParameterEntity[];
}
