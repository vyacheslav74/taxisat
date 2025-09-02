import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Point } from '../interfaces/point';
import { PointTransformer } from '../transformers/point.transformer';
import { RiderAddressType } from './enums/rider-address-type.enum';
import { CustomerEntity } from './customer.entity';
import { PhoneNumber } from './fragments/phone-number';

@Entity('rider_address')
export class RiderAddressEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: RiderAddressType,
    default: RiderAddressType.Other,
  })
  type!: RiderAddressType;

  @Column()
  title!: string;

  @Column({ nullable: true, name: 'address' })
  details?: string;

  @Column('point', {
    transformer: new PointTransformer(),
  })
  location!: Point;

  @ManyToOne(() => CustomerEntity, (rider) => rider.addresses)
  rider!: CustomerEntity;

  @Column(() => PhoneNumber)
  phoneNumber!: PhoneNumber;

  @Column()
  riderId!: number;
}
