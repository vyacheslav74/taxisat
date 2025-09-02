import {
  Column,
  Entity,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ProductEntity } from './product.entity';
import { ShopProductPresetEntity } from './shop-product-preset.entity';
import { ShopEntity } from './shop.entity';

@Entity('product_category')
export class ProductCategoryEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToOne(() => ShopEntity, (shop) => shop.productCategories)
  shop?: ShopEntity;

  @Column()
  shopId!: number;

  @ManyToMany(() => ProductEntity, (product) => product.categories)
  products!: ProductEntity[];

  @ManyToMany(() => ShopProductPresetEntity, (preset) => preset.productCategories)
  presets!: ShopProductPresetEntity[];
}
