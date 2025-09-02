import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { FleetStaffEntity } from './fleet-staff.entity';
import { SessionInfo } from '../fragments/session-info';

@Entity('fleet_staff_session')
export class FleetStaffSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => SessionInfo)
  sessionInfo!: SessionInfo;

  @ManyToOne(() => FleetStaffEntity, (fleet) => fleet.sessions)
  fleetStaff!: FleetStaffEntity;

  @Column()
  fleetStaffId!: number;
}
