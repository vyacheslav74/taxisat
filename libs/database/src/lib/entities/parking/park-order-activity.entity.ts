import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ParkOrderEntity } from './park-order.entity';
import { ParkOrderStatus } from './enums/park-order-status.enum';

@Entity('park_order_activity')
export class ParkOrderActivityEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({
    nullable: true,
  })
  updatedAt?: Date;

  @Column('enum', {
    enum: ParkOrderStatus,
  })
  status!: ParkOrderStatus;

  @ManyToOne(() => ParkOrderEntity, (order) => order.activities)
  parkOrder?: ParkOrderEntity;

  @Column({
    nullable: true,
  })
  expectedBy?: Date;

  @Column()
  parkOrderId!: number;
}
