import {
  Column,
  Entity,
  Index,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CustomerEntity } from './customer.entity';

@Entity('rider_wallet')
export class RiderWalletEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('float', {
    default: 0.0,
    name: 'amount',
  })
  balance!: number;

  @Index()
  @Column('char', { length: 3 })
  currency!: string;

  @ManyToOne(() => CustomerEntity, (rider) => rider.wallets)
  rider!: CustomerEntity;

  @Column()
  riderId!: number;
}
