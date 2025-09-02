import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkingCustomerNotificationType } from './enums/parking-customer-notification-type.enum';
import { CustomerEntity } from '../customer.entity';
import { ParkOrderEntity } from './park-order.entity';

@Entity('parking_customer_notification')
export class ParkingCustomerNotificationEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: ParkingCustomerNotificationType,
  })
  type!: ParkingCustomerNotificationType;

  @CreateDateColumn()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  expireAt?: Date;

  @ManyToOne(
    () => ParkOrderEntity,
    (parkOrder) => parkOrder.customerNotifications,
  )
  parkOrder?: ParkOrderEntity;

  @Column()
  parkOrderId!: number;

  @ManyToOne(() => CustomerEntity)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;
}
