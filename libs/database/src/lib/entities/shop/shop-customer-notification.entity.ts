import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { AnnouncementEntity } from '../announcement.entity';
import { ShopCustomerNotificationType } from './enums/shop-customer-notification-type.enum';
import { CustomerEntity } from '../customer.entity';
import { ShopOrderEntity } from './shop-order.entity';
import { ShopCustomerSupportRequestEntity } from './shop-customer-support-request.entity';

@Entity('shop_customer_notification')
export class ShopCustomerNotificationEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: ShopCustomerNotificationType,
  })
  type!: ShopCustomerNotificationType;

  @Column({
    nullable: true,
  })
  readAt?: Date;

  @Column()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  title?: string;

  @Column({
    nullable: true,
  })
  message?: string;

  @ManyToOne(() => CustomerEntity)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @ManyToOne(() => AnnouncementEntity)
  announcement?: AnnouncementEntity;

  @Column({
    nullable: true,
  })
  announcementId?: number;

  @Column({
    nullable: true,
  })
  shopOrderId?: number;

  @ManyToOne(() => ShopOrderEntity)
  shopOrder?: ShopOrderEntity;

  @Column({
    nullable: true,
  })
  shopCustomerSupportRequestId?: number;

  @ManyToOne(() => ShopCustomerSupportRequestEntity)
  shopCustomerSupportRequest?: ShopCustomerSupportRequestEntity;
}
