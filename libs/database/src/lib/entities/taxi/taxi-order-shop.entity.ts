import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { TaxiOrderEntity } from './taxi-order.entity';
import { ShopOrderCartEntity } from '../shop/shop-order-cart.entity';

@Entity('taxi_order_shop')
export class TaxiOrderShopEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.shopCarts, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  taxiOrder!: TaxiOrderEntity;

  @Column()
  taxiOrderId!: number;

  @ManyToOne(() => ShopOrderCartEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  shopOrderCart!: ShopOrderCartEntity;

  pickedAt?: Date;

  @Column()
  shopOrderCartId?: number;
}
