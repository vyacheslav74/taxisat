import {
  Column,
  CreateDateColumn,
  Entity,
  Index,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { AppType } from '../enums/app-type.enum';
import { DevicePlatform } from '../enums/device-platform.enum';
import { DeviceType } from '../enums/device-type.enum';
import { ShopEntity } from './shop.entity';

@Entity('shop_session')
export class ShopSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

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

  @ManyToOne(() => ShopEntity, (shop) => shop.sessions, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  shop!: ShopEntity;

  @Column()
  shopId!: number;
}
