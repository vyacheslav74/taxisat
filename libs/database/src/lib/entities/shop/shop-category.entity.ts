import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';
import { ShopCategoryStatus } from './enums/shop-category-status.enum';
import { ShopEntity } from './shop.entity';
import { MediaEntity } from '../media.entity';

@Entity('shop_category')
export class ShopCategoryEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @OneToOne(() => MediaEntity)
  @JoinColumn()
  image?: MediaEntity;

  @Column()
  imageId!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @UpdateDateColumn()
  updatedAt?: Date;

  @DeleteDateColumn()
  deletedAt?: Date;

  @Column('enum', {
    enum: ShopCategoryStatus,
    default: ShopCategoryStatus.Enabled,
  })
  status!: ShopCategoryStatus;

  @ManyToMany(() => ShopEntity, (shop) => shop.categories)
  shops!: ShopEntity[];
}
