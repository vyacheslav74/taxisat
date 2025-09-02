import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from 'typeorm';
import { ParkingFeedbackEntity } from './parking-feedback.entity';

@Entity('parking_feedback_parameter')
export class ParkingFeedbackParameterEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column()
  isGood!: boolean;

  @ManyToMany(() => ParkingFeedbackEntity, (feedback) => feedback.parameters)
  feedbacks!: ParkingFeedbackEntity[];
}
