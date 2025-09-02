import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkingCustomerNotificationType } from './enums/parking-customer-notification-type.enum';
import { ParkingProviderNotificationType } from './enums/parking-provider-notification-type.enum';
import { ParkOrderEntity } from './park-order.entity';
import { CustomerEntity } from '../customer.entity';

@Entity('parking_provider_notification')
export class ParkingProviderNotificationEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: ParkingCustomerNotificationType,
  })
  type!: ParkingProviderNotificationType;

  @CreateDateColumn()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  expireAt?: Date;

  @ManyToOne(
    () => ParkOrderEntity,
    (parkOrder) => parkOrder.providerNotifications,
  )
  parkOrder?: ParkOrderEntity;

  @Column()
  parkOrderId!: number;

  @ManyToOne(() => CustomerEntity)
  provider?: CustomerEntity;

  @Column()
  providerId!: number;
}
