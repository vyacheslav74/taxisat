import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CustomerEntity } from '../customer.entity';
import { ProductEntity } from './product.entity';

@Entity('customer_favorite_product')
export class CustomerFavoriteProductEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => CustomerEntity, (customer) => customer.favoriteProducts)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @ManyToOne(() => ProductEntity, (product) => product.customersFavorited)
  product?: ProductEntity;

  @Column()
  productId!: number;
}
