import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ReviewStatus } from '../enums/review.status.enum';
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { ShopEntity } from './shop.entity';
import { CustomerEntity } from '../customer.entity';
import { ShopFeedbackParameterEntity } from './shop-feedback-parameter.entity';
import { ProductEntity } from './product.entity';

@Entity('shop_feedback')
export class ShopFeedbackEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('tinyint')
  score!: number;

  @Column({ nullable: true })
  comment?: string;

  @Column('enum', {
    enum: ReviewStatus,
    default: ReviewStatus.Pending,
  })
  status!: ReviewStatus;

  @Column({
    nullable: true,
  })
  reply?: string;

  @Column({
    nullable: true,
  })
  replyAt?: Date;

  @OneToMany(() => ShopOrderCartEntity, (order) => order.feedbacks)
  orderCart?: ShopOrderCartEntity;

  @Column()
  orderCartId!: number;

  @ManyToMany(() => ProductEntity, (product) => product.feedbacks)
  @JoinTable()
  products?: ProductEntity[];

  @ManyToOne(() => ShopEntity, (shop) => shop.feedbacks)
  shop!: number;

  @Column()
  shopId!: number;

  @ManyToOne(() => CustomerEntity, (customer) => customer.reviews)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @OneToMany(
    () => ShopFeedbackParameterEntity,
    (reviewParameter) => reviewParameter.shopFeedback,
  )
  parameters?: ShopFeedbackParameterEntity[];
}
