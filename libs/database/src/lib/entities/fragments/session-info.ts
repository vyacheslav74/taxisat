import { Column, CreateDateColumn, Index } from 'typeorm';
import { DeviceType } from '../enums/device-type.enum';
import { DevicePlatform } from '../enums/device-platform.enum';
import { AppType } from '../enums/app-type.enum';

export class SessionInfo {
  @CreateDateColumn()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  lastActivityAt?: Date;

  @Column({
    nullable: true,
  })
  ip?: string;

  @Column({
    nullable: true,
  })
  ipLocation?: string;

  @Column({
    nullable: true,
  })
  deviceName?: string;

  @Column('enum', {
    enum: AppType,
  })
  appType!: AppType;

  @Column('enum', {
    enum: DevicePlatform,
  })
  devicePlatform!: DevicePlatform;

  @Column('enum', {
    enum: DeviceType,
  })
  deviceType!: DeviceType;

  @Index()
  @Column()
  token!: string;
}
