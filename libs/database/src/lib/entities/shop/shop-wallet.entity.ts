import {
  Column,
  Entity,
  Index,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ShopEntity } from './shop.entity';

@Entity('shop_wallet')
export class ShopWalletEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('float', {
    default: 0.0,
  })
  balance!: number;

  @Index()
  @Column('char', { length: 3 })
  currency!: string;

  @ManyToOne(() => ShopEntity, (shop) => shop.wallet, {
    onDelete: 'CASCADE',
  })
  shop?: ShopEntity;

  @Column()
  shopId!: number;
}
