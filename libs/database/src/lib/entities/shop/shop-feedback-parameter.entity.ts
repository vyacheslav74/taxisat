import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopFeedbackEntity } from './shop-feedback.entity';

@Entity('shop_feedback_parameter')
export class ShopFeedbackParameterEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  isGood!: boolean;

  @Column()
  name!: string;

  @ManyToOne(
    () => ShopFeedbackEntity,
    (shopFeedback) => shopFeedback.parameters,
  )
  shopFeedback!: number;

  @Column()
  shopFeedbackId!: number;
}
