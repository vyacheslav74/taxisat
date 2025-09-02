import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { SavedPaymentMethodType } from './enums/saved-payment-method-type';
import { CustomerEntity } from './customer.entity';
import { DriverEntity } from './taxi/driver.entity';
import { PaymentGatewayEntity } from './payment-gateway.entity';
import { ProviderBrand } from './enums/card-type.enum';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { ParkOrderEntity } from './parking/park-order.entity';
import { RiderTransactionEntity } from './rider-transaction.entity';
import { ShopEntity } from './shop/shop.entity';
import { Country } from './enums/country.enum';

@Entity('saved_payment_method')
export class SavedPaymentMethodEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: string;

  @Column({
    nullable: true,
  })
  lastFour?: string;

  @Column({
    default: true,
  })
  isEnabled!: boolean;

  // @deprecated use each entity's own defaultSavedPaymentMethod
  @Column({
    default: false,
  })
  isDefault!: boolean;

  @Column('enum', {
    enum: SavedPaymentMethodType,
  })
  type!: SavedPaymentMethodType;

  @Column('enum', {
    enum: Country,
  })
  country?: Country;

  @Column('enum', {
    enum: ProviderBrand,
    nullable: true,
  })
  providerBrand?: ProviderBrand;

  @Column({
    nullable: true,
  })
  expiryDate?: Date;

  @Column({
    nullable: true,
  })
  holderName?: string;

  @ManyToOne(() => CustomerEntity, (rider) => rider.savedPaymentMethods)
  rider?: CustomerEntity;

  @Column({
    nullable: true,
  })
  riderId?: number;

  @ManyToOne(() => DriverEntity, (driver) => driver.savedPaymentMethods)
  driver?: DriverEntity;

  @Column({
    nullable: true,
  })
  driverId?: number;

  @ManyToOne(() => ShopEntity, (shop) => shop.savedPaymentMethods)
  shop?: ShopEntity;

  @Column({
    nullable: true,
  })
  shopId?: number;

  @OneToMany(() => ParkOrderEntity, (order) => order.savedPaymentMethod)
  parkOrders!: ParkOrderEntity[];

  @Column()
  token!: string;

  @ManyToOne(
    () => PaymentGatewayEntity,
    (gateway) => gateway.savedPaymentMethods,
  )
  paymentGateway?: PaymentGatewayEntity;

  @Column()
  paymentGatewayId!: number;

  @OneToMany(() => TaxiOrderEntity, (order) => order.savedPaymentMethod)
  orders!: TaxiOrderEntity[];

  @OneToMany(
    () => RiderTransactionEntity,
    (transaction) => transaction.savedPaymentMethod,
  )
  transactions?: RiderTransactionEntity[];
}
