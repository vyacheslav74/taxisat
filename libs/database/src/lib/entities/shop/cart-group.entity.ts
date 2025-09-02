import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { RiderAddressEntity } from '../rider-address.entity';
import { DeliveryMethod } from './enums/delivery-method.enum';
import { CartEntity } from './cart.entity';
import { CustomerEntity } from '../customer.entity';

@Entity('cart_group')
export class CartGroupEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => CustomerEntity)
  customer?: CustomerEntity;

  @Column()
  customerId!: number;

  @ManyToOne(() => RiderAddressEntity)
  deliveryAddress?: RiderAddressEntity;

  @Column()
  deliveryAddressId!: number;

  @Column('enum', {
    enum: DeliveryMethod,
  })
  deliveryMethod!: DeliveryMethod;

  @Column('float', {
    nullable: true,
    precision: 10,
    scale: 2,
  })
  bathDeliveryMethodDeliveryFee?: number;

  @Column('float', {
    nullable: true,
    precision: 10,
    scale: 2,
  })
  splitDeliveryMethodDeliveryFee?: number;

  @Column('int', {
    nullable: true,
  })
  batchDeliveryDuration?: number;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  subtotal!: number;

  @Column('float', {
    nullable: true,
    precision: 10,
    scale: 2,
  })
  deliveryFee?: number;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  tax!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  discount!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  serviceFee!: number;

  @Column('float', {
    precision: 10,
    scale: 2,
  })
  total!: number;

  @OneToMany(() => CartEntity, (cart) => cart.cartGroup)
  carts?: CartEntity[];
}
