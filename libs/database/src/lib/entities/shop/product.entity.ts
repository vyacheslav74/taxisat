import {
  Column,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ProductCategoryEntity } from './product.category.entity';
import { ProductVariantEntity } from './product-variant.entity';
import { MediaEntity } from '../media.entity';
import { ProductOptionEntity } from './product-option.entity';
import { ShopEntity } from './shop.entity';
import { RatingAggregate } from '../fragments/rating-aggregate';
import { CustomerFavoriteProductEntity } from './customer-favorite-product.entity';
import { ShopOrderCartProductEntity } from './shop-order-cart-product.entity';
import { ShopFeedbackEntity } from './shop-feedback.entity';
import { WeekdayScheduleDTO } from '../../interfaces/weekday-schedule.dto';
import { WeeklyScheduleTransformer } from '../../transformers/weekly-schedule.transformer';
import { Dimensions } from '../../interfaces/dimensions';

@Entity('product')
export class ProductEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column({
    nullable: true,
  })
  description?: string;

  @Column({
    type: 'int',
    nullable: true,
  })
  weight?: number;

  @Column({
    type: 'json',
    nullable: true,
  })
  dimensions?: Dimensions;

  @Column('text', {
    transformer: new WeeklyScheduleTransformer(),
    nullable: true,
  })
  availabilitySchedule!: WeekdayScheduleDTO[];

  @Column(() => RatingAggregate)
  ratingAggregate!: RatingAggregate;

  @ManyToOne(() => ShopEntity, (shop) => shop.products)
  shop?: ShopEntity;

  @Column()
  shopId!: number;

  @OneToOne(() => MediaEntity)
  image?: MediaEntity;

  @Column({ nullable: true })
  imageId?: number;

  @Column('int', {
    comment: 'in minutes',
  })
  minimumPreparationTime!: number;

  @Column('int', {
    comment: 'in minutes',
  })
  maximumPreparationTime!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    default: 0,
  })
  discountPercentage!: number;

  @Column('int', {
    default: 0,
  })
  discountedQuantity!: number;

  @Column()
  discountUntil?: Date;

  @Column('int', {
    default: 0,
  })
  usedDiscountedQuantity!: number;

  @Column('int', {
    default: 0,
  })
  stockQuantity!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  basePrice!: number;

  @OneToMany(() => ProductVariantEntity, (variant) => variant.product)
  variants!: ProductVariantEntity[];

  @ManyToMany(() => ProductOptionEntity, (option) => option.products)
  @JoinTable()
  options!: ProductOptionEntity[];

  @ManyToMany(() => ProductCategoryEntity, (category) => category.products)
  @JoinTable()
  categories!: ProductCategoryEntity[];

  @OneToMany(
    () => CustomerFavoriteProductEntity,
    (customerFavoriteProduct) => customerFavoriteProduct.product,
  )
  customersFavorited?: CustomerFavoriteProductEntity[];

  @OneToMany(
    () => ShopOrderCartProductEntity,
    (orderProduct) => orderProduct.product,
  )
  orderProducts!: ShopOrderCartProductEntity[];

  @ManyToMany(() => ShopFeedbackEntity, (feedback) => feedback.products)
  feedbacks?: ShopFeedbackEntity;
}
