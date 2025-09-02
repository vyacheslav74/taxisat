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
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { ShopCustomerSupportRequestType } from '../enums/shop-customer-support-request-type.enum';
import { CustomerEntity } from '../customer.entity';
import { ShopCustomerSupportRequestActivityEntity } from './shop-customer-support-request-activity.entity';

@Entity('shop_customer_support_request')
export class ShopCustomerSupportRequestEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: ShopCustomerSupportRequestType,
  })
  type!: ShopCustomerSupportRequestType;

  @ManyToOne(() => ShopOrderEntity, (order) => order.customerSupportRequests)
  order!: ShopOrderEntity;

  @Column()
  orderId!: number;

  @ManyToOne(() => ShopOrderCartEntity, (cart) => cart.customerSupportRequests)
  cart!: ShopOrderCartEntity;

  @Column({ nullable: true })
  cartId?: number;

  @ManyToOne(() => CustomerEntity)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @ManyToMany(
    () => OperatorEntity,
    (staff) => staff.assignedShopCustomerSupportRequests,
  )
  @JoinTable()
  assignedToStaffs!: OperatorEntity[];

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
    () => ShopCustomerSupportRequestActivityEntity,
    (activity) => activity.supportRequest,
  )
  activities!: ShopCustomerSupportRequestActivityEntity[];
}
