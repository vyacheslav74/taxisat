import {
  Column,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CartEntity } from './cart.entity';
import { ProductEntity } from './product.entity';
import { ProductVariantEntity } from './product-variant.entity';
import { ProductOptionEntity } from './product-option.entity';

@Entity('cart_product')
export class CartProductEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => CartEntity, (cart) => cart.products)
  cart?: CartEntity;

  @Column()
  cartId!: number;

  @ManyToOne(() => ProductEntity)
  product?: ProductEntity;

  @Column()
  productId!: number;

  @Column({
    type: 'int',
    default: 1,
  })
  quantity!: number;

  @ManyToOne(() => ProductVariantEntity)
  productVariant?: ProductVariantEntity;

  @Column({
    nullable: true,
  })
  productVariantId!: number;

  @ManyToMany(() => ProductOptionEntity)
  @JoinTable()
  productOptions?: ProductOptionEntity[];
}
