import {
  Column,
  Entity,
  Index,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CustomerEntity } from '../customer.entity';

@Entity('parking_wallet')
export class ParkingWalletEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('float', {
    default: 0,
  })
  balance!: number;

  @Column('char', {
    length: 3,
  })
  @Index()
  currency!: string;

  @ManyToOne(() => CustomerEntity, (customer) => customer.parkingWallets)
  customer!: CustomerEntity;

  @Column()
  customerId!: number;
}
