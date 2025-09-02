import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CustomerEntity } from '../customer.entity';
import { DriverEntity } from './driver.entity';
import { TaxiOrderEntity } from './taxi-order.entity';

@Entity('rider_review')
export class RiderReviewEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('tinyint')
  score!: number;

  @Column({ name: 'review', nullable: true })
  description?: string;

  @ManyToOne(() => CustomerEntity, (rider) => rider.reviewsForRider)
  rider!: CustomerEntity;

  @Column()
  riderId!: number;

  @ManyToOne(() => DriverEntity, (driver) => driver.reviewsByDriver)
  driver!: DriverEntity;

  @Column()
  driverId!: number;

  @CreateDateColumn()
  reviewTimestamp!: Date;

  @OneToOne(() => TaxiOrderEntity, (order) => order.driverReviewForRider)
  @JoinColumn()
  request?: TaxiOrderEntity;

  @Column()
  orderId!: number;
}
