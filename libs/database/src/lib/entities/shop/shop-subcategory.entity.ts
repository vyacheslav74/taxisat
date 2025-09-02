import { Column, Entity, ManyToMany, PrimaryGeneratedColumn } from 'typeorm';
import { ShopEntity } from './shop.entity';

@Entity('shop_subcategory')
export class ShopSubcategoryEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @ManyToMany(() => ShopEntity, (shop) => shop.subcategories)
  shops!: ShopEntity[];
}
