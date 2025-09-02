import {
  Column,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ProductCategoryEntity } from './product.category.entity';
import { ShopEntity } from './shop.entity';
import { WeeklyScheduleTransformer } from '../../transformers/weekly-schedule.transformer';
import { WeekdayScheduleDTO } from '../../interfaces/weekday-schedule.dto';

@Entity('shop_product_preset')
export class ShopProductPresetEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToOne(() => ShopEntity, (shop) => shop.productPresets)
  shop!: ShopEntity;

  @Column()
  shopId!: number;

  @Column('text', {
    transformer: new WeeklyScheduleTransformer(),
    nullable: true,
  })
  weeklySchedule!: WeekdayScheduleDTO[];

  @ManyToMany(() => ProductCategoryEntity, (product) => product.presets)
  @JoinTable()
  productCategories!: ProductCategoryEntity[];
}
