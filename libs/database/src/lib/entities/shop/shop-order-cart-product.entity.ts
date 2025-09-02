import {
  Column,
  Entity,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { ProductVariantEntity } from './product-variant.entity';
import { ProductOptionEntity } from './product-option.entity';
import { ProductEntity } from './product.entity';

@Entity('shop_order_cart_product')
export class ShopOrderCartProductEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => ShopOrderCartEntity, (cart) => cart.products)
  cart!: ShopOrderCartEntity;

  @Column()
  cartId!: number;

  @ManyToOne(() => ProductEntity, (product) => product.orderProducts)
  product!: ProductEntity;

  @Column()
  productId!: number;

  @ManyToOne(() => ProductVariantEntity, (product) => product.orderProducts)
  productVariant!: ProductVariantEntity;

  @Column({
    nullable: true,
  })
  productVariantId?: number;

  @ManyToMany(() => ProductOptionEntity, (option) => option.orderProducts)
  options?: ProductOptionEntity[];

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  priceEach!: number;

  @Column('int', {
    default: 1,
  })
  quantity!: number;

  @Column('int', {
    default: 0,
  })
  unavailableQuantity!: number;

  @Column('int', {
    default: 0,
  })
  canceledQuantity!: number;
}
