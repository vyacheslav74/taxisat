import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from 'typeorm';
import { ProductEntity } from './product.entity';
import { ShopOrderCartProductEntity } from './shop-order-cart-product.entity';

@Entity()
export class ProductOptionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column({ nullable: true })
  description?: string;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  price!: number;

  @ManyToMany(() => ProductEntity, (product) => product.options)
  products!: ProductEntity;

  @Column()
  productId!: number;

  @ManyToMany(() => ShopOrderCartProductEntity, (orderProduct) => orderProduct.options)
  orderProducts?: ShopOrderCartProductEntity[];
}
