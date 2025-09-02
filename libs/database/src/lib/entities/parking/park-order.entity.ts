import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ParkSpotEntity } from './park-spot.entity';
import { ParkOrderStatus } from './enums/park-order-status.enum';
import { CustomerEntity } from '../customer.entity';
import { ParkSpotVehicleType } from './enums/park-spot-vehicle-type.enum';
import { ParkSpotCarSize } from './enums/park-spot-car-size.enum';
import { SavedPaymentMethodEntity } from '../saved-payment-method.entity';
import { PaymentGatewayEntity } from '../payment-gateway.entity';
import { PaymentMode } from '../enums/payment-mode.enum';
import { ParkingCustomerNotificationEntity } from './parking-customer-notification.entity';
import { ParkingProviderNotificationEntity } from './parking-provider-notification.entity';
import { ParkingFeedbackEntity } from './parking-feedback.entity';
import { ParkOrderNoteEntity } from './park-order-note.entity';
import { RiderTransactionEntity } from '../rider-transaction.entity';
import { ProviderTransactionEntity } from '../provider-transaction.entity';
import { ParkingSupportRequestEntity } from './parking-support-request.entity';
import { ParkOrderActivityEntity } from './park-order-activity.entity';
import { ParkingTransactionEntity } from './parking-transaction.entity';

@Entity('park_order')
export class ParkOrderEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => CustomerEntity, (customer) => customer.ownedParkOrders)
  spotOwner!: CustomerEntity;

  @Column()
  spotOwnerId!: number;

  @Column('enum', {
    enum: ParkSpotVehicleType,
    default: ParkSpotVehicleType.Car,
  })
  vehicleType!: ParkSpotVehicleType;

  @Column('enum', {
    enum: ParkSpotCarSize,
    nullable: true,
  })
  carSize?: ParkSpotCarSize;

  @Column({
    default: 'USD',
  })
  currency!: string;

  @ManyToOne(() => CustomerEntity, (rider) => rider.ownedParkOrders)
  carOwner!: CustomerEntity;

  @Column()
  carOwnerId!: number;

  @ManyToOne(() => ParkSpotEntity, (parkSpot) => parkSpot.parkOrders)
  parkSpot!: ParkSpotEntity;

  @Column()
  parkSpotId!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: PaymentMode,
  })
  paymentMode!: PaymentMode;

  @Column()
  enterTime!: Date;

  @Column()
  exitTime!: Date;

  @Column('float', {
    nullable: true,
    default: '0.00',
    precision: 12,
    scale: 2,
  })
  price!: number;

  @Column({
    nullable: true,
  })
  extendedExitTime?: Date;

  @ManyToOne(
    () => SavedPaymentMethodEntity,
    (paymentMethod) => paymentMethod.parkOrders,
  )
  savedPaymentMethod?: SavedPaymentMethodEntity;

  @Column({
    nullable: true,
  })
  savedPaymentMethodId?: number;

  @ManyToOne(() => PaymentGatewayEntity, (gateway) => gateway.parkOrders)
  paymentGateway?: PaymentGatewayEntity;

  @Column({
    nullable: true,
  })
  paymentGatewayId?: number;

  @Column('enum', {
    enum: PaymentMode,
  })
  paymentMethod!: PaymentMode;

  @Column('enum', {
    enum: ParkOrderStatus,
    default: ParkOrderStatus.PENDING,
  })
  status!: ParkOrderStatus;

  @OneToMany(
    () => ParkingCustomerNotificationEntity,
    (notification) => notification.parkOrder,
  )
  customerNotifications?: ParkingCustomerNotificationEntity[];

  @OneToMany(
    () => ParkingProviderNotificationEntity,
    (notification) => notification.parkOrder,
  )
  providerNotifications?: ParkingProviderNotificationEntity[];

  @OneToMany(() => ParkingFeedbackEntity, (feedback) => feedback.order)
  feedbacks?: ParkingFeedbackEntity;

  @OneToMany(
    () => ParkOrderNoteEntity,
    (parkOrderNote) => parkOrderNote.parkOrder,
  )
  notes?: ParkOrderNoteEntity[];

  @OneToMany(() => ParkOrderActivityEntity, (activity) => activity.parkOrder)
  activities?: ParkOrderActivityEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (riderTransaction) => riderTransaction.parkOrderCustomer,
  )
  customerTransactions?: RiderTransactionEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (riderTransaction) => riderTransaction.parkOrderParkOwner,
  )
  parkOwnerTransactions?: RiderTransactionEntity[];

  @OneToMany(
    () => ProviderTransactionEntity,
    (ProviderTransactionEntity) => ProviderTransactionEntity.parkOrder,
  )
  providerTransactions?: ProviderTransactionEntity[];

  @OneToMany(
    () => ParkingSupportRequestEntity,
    (supportRequest) => supportRequest.activities,
  )
  supportRequests?: ParkingSupportRequestEntity[];

  @OneToMany(
    () => ParkingTransactionEntity,
    (parkTransaction) => parkTransaction.parkOrder,
  )
  parkingTransactions?: ParkingTransactionEntity[];
}
