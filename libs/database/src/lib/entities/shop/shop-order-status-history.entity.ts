import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopOrderStatus } from './enums/shop-order-status.enum';
import { ShopOrderEntity } from './shop-order.entity';
import { ShopOrderCartEntity } from './shop-order-cart.entity';

@Entity('shop_order_status_history')
export class ShopOrderStatusHistoryEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: ShopOrderStatus,
  })
  status!: ShopOrderStatus;

  @ManyToOne(() => ShopOrderEntity, (order) => order.statusHistories)
  order!: ShopOrderEntity;

  @Column()
  orderId!: number;

  @ManyToOne(() => ShopOrderCartEntity, (order) => order.statusHistories)
  orderCart!: ShopOrderCartEntity;

  @Column({
    nullable: true,
  })
  orderCartId?: number;

  @Column({
    nullable: true,
  })
  expectedBy?: Date;

  @Column({
    nullable: true,
  })
  updatedAt?: Date;
}
