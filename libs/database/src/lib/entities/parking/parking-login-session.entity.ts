import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { CustomerEntity } from '../customer.entity';
import { SessionInfo } from '../fragments/session-info';

@Entity('parking_login_session')
export class ParkingLoginSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => SessionInfo)
  sessionInfo!: SessionInfo;

  @ManyToOne(
    () => CustomerEntity,
    (customer) => customer.parkingLoginSessions,
    {
      onDelete: 'CASCADE',
      onUpdate: 'NO ACTION',
    },
  )
  customer!: CustomerEntity;

  @Column()
  customerId!: number;
}
