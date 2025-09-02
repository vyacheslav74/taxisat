import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ProductEntity } from './product.entity';
import { ShopOrderCartProductEntity } from './shop-order-cart-product.entity';

@Entity('product_variant')
export class ProductVariantEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => ProductEntity, (product) => product.variants)
  product!: ProductEntity;

  @Column()
  productId!: number;

  @Column()
  name!: string;

  @Column({ nullable: true })
  description?: string;

  @Column()
  basePrice!: number;

  @OneToMany(
    () => ShopOrderCartProductEntity,
    (orderProduct) => orderProduct.productVariant,
  )
  orderProducts?: ShopOrderCartProductEntity[];
}
