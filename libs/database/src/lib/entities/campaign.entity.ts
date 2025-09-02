import {
  Column,
  Entity,
  JoinTable,
  ManyToMany,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ServiceEntity } from './taxi/service.entity';
import { CampaignCodeEntity } from './campaign-code.entity';
import { AppType } from './enums/app-type.enum';

@Entity('campaign')
export class CampaignEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column({ nullable: true })
  description?: string;

  @Column('set', {
    enum: AppType,
    default: [AppType.Taxi],
  })
  appType!: AppType[];

  @Column({
    default: 0,
  })
  manyUsersCanUse!: number;

  @Column({
    default: 1,
  })
  manyTimesUserCanUse!: number;

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  minimumCost!: number;

  @Column('float', {
    default: '0.00',
    precision: 10,
    scale: 2,
  })
  maximumCost!: number;

  @Column({ name: 'startTimestamp' })
  startAt!: Date;

  @Column({ name: 'expirationTimestamp', nullable: true })
  expireAt?: Date;

  @Column('tinyint', {
    default: 0,
  })
  discountPercent!: number;

  @Column('float', {
    default: 0,
    precision: 10,
    scale: 2,
  })
  discountFlat!: number;

  @Column({
    default: true,
  })
  isEnabled!: boolean;

  @Column({
    default: 'USD',
  })
  currency!: string;

  @Column({
    default: false,
  })
  isFirstTravelOnly!: boolean;

  @ManyToMany(() => ServiceEntity, (service) => service.allowedCoupons)
  @JoinTable({ name: 'campaign_services_service' })
  allowedServices!: ServiceEntity[];

  @OneToMany(() => CampaignCodeEntity, (code) => code.campaign)
  codes?: CampaignCodeEntity[];
}
