import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ShopOrderEntity } from './shop-order.entity';
import { OperatorEntity } from '../operator.entity';
import { ComplaintStatus } from '../enums/complaint-status.enum';
import { ShopSupportRequestActivityEntity } from './shop-support-request-activity.entity';
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { ShopEntity } from './shop.entity';
import { ShopSupportRequestType } from '../enums/shop-support-request-type.enum';

@Entity('shop_support_request')
export class ShopSupportRequestEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: ShopSupportRequestType,
  })
  type!: ShopSupportRequestType;

  @ManyToOne(() => ShopOrderEntity, (order) => order.supportRequests)
  order!: ShopOrderEntity;

  @Column()
  orderId!: number;

  @ManyToOne(() => ShopOrderCartEntity, (cart) => cart.supportRequests)
  cart!: ShopOrderCartEntity;

  @Column({ nullable: true })
  cartId?: number;

  @ManyToOne(() => ShopEntity, (shop) => shop.supportRequests)
  shop?: ShopEntity;

  @Column({})
  shopId!: number;

  @ManyToMany(
    () => OperatorEntity,
    (staff) => staff.assignedShopSupportRequests,
  )
  @JoinTable()
  assignedToStaffs!: OperatorEntity[];

  @Column()
  requestedByShop!: boolean;

  @Column()
  subject!: string;

  @Column({ nullable: true })
  content?: string;

  @Column('enum', {
    enum: ComplaintStatus,
    default: ComplaintStatus.Submitted,
  })
  status!: ComplaintStatus;

  @OneToMany(
    () => ShopSupportRequestActivityEntity,
    (activity) => activity.supportRequest,
  )
  activities!: ShopSupportRequestActivityEntity[];
}
