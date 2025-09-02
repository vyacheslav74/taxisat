import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CartProductEntity } from './cart-product.entity';
import { ShopEntity } from './shop.entity';
import { CartGroupEntity } from './cart-group.entity';

@Entity('cart')
export class CartEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => ShopEntity, (shop) => shop.carts)
  shop?: ShopEntity;

  @Column()
  shopId!: number;

  @OneToMany(() => CartProductEntity, (cartProduct) => cartProduct.cart)
  products?: CartProductEntity[];

  @ManyToOne(() => CartGroupEntity, (cartGroup) => cartGroup.carts)
  cartGroup?: CartGroupEntity;

  @Column()
  cartGroupId!: number;
}
