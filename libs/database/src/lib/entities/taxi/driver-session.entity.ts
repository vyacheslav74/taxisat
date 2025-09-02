import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { DriverEntity } from './driver.entity';
import { SessionInfo } from '../fragments/session-info';

@Entity('driver_session')
export class DriverSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => SessionInfo)
  sessionInfo!: SessionInfo;

  @ManyToOne(() => DriverEntity, (driver) => driver.sessions, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  driver!: DriverEntity;

  @Column()
  driverId!: number;
}
