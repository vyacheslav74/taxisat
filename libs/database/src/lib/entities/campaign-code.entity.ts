import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { CustomerEntity } from './customer.entity';
import { TaxiOrderEntity } from './taxi/taxi-order.entity';
import { CampaignEntity } from './campaign.entity';

@Entity('campaign_code')
export class CampaignCodeEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  code!: string;

  @ManyToOne(() => CustomerEntity, (rider) => rider.campaignCodes)
  customer!: CustomerEntity;

  @Column({ nullable: true })
  customerId?: number;

  @OneToMany(() => TaxiOrderEntity, (order) => order.campaignCode, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  orders!: TaxiOrderEntity[];

  @ManyToOne(() => CampaignEntity, (campaign) => campaign.codes)
  campaign?: CampaignEntity;

  @Column({ nullable: true })
  campaignId?: number;
}
