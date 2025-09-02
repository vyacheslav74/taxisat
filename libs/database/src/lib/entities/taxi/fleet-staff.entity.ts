import {
  Column,
  CreateDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import {
  FleetStaffPermissionFinancial,
  FleetStaffPermissionOrder,
} from '../enums/fleet-staff.permissions.enum';
import { FleetStaffSessionEntity } from './fleet-staff-session.entity';
import { FleetEntity } from './fleet.entity';
import { MediaEntity } from '../media.entity';

@Entity('fleet_staff')
export class FleetStaffEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  registeredAt!: Date;

  @Column()
  firstName!: string;

  @Column()
  lastName!: string;

  @Column('bigint')
  phoneNumber!: string;

  @Column('bigint')
  mobileNumber!: string;

  @Column({ default: false })
  isBlocked!: boolean;

  @Column({
    nullable: true,
  })
  email?: string;

  @Column({ nullable: true })
  lastActivityAt?: Date;

  @Column('varchar', { nullable: true })
  address?: string;

  @Column()
  userName!: string;

  @Column()
  password!: string;

  @Column('enum', {
    enum: FleetStaffPermissionOrder,
  })
  permissionOrder!: FleetStaffPermissionOrder;

  @Column('enum', {
    enum: FleetStaffPermissionFinancial,
  })
  permissionFinancial!: FleetStaffPermissionFinancial;

  @OneToMany(() => FleetStaffSessionEntity, (device) => device.fleetStaff)
  sessions?: FleetStaffSessionEntity[];

  @ManyToMany(() => FleetEntity, (fleet) => fleet.staffs)
  fleet?: FleetEntity;

  @Column()
  fleetId!: number;

  @OneToOne(() => MediaEntity)
  @JoinColumn()
  profileImage?: MediaEntity;

  @Column({ nullable: true })
  profileImageId?: number;
}
