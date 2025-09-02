import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { DriverEntity } from './driver.entity';
import { ServiceEntity } from './service.entity';

@Entity('driver_services_service')
export class DriverServicesServiceEntity {
  //   @PrimaryGeneratedColumn()
  //   id!: number;

  @Column('int', {
    primary: true,
  })
  driverId!: number;

  @ManyToOne(() => DriverEntity, (driver) => driver.enabledServices, {
    onDelete: 'CASCADE',
  })
  driver!: DriverEntity;

  @Column('int', {
    primary: true,
  })
  serviceId!: number;

  @ManyToOne(() => ServiceEntity, (service) => service.driversWithService, {
    onDelete: 'CASCADE',
  })
  service?: ServiceEntity;

  @Column({
    default: true,
  })
  driverEnabled!: boolean;

  @CreateDateColumn()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  updatedAt?: Date;
}
