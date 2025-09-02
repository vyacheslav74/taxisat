import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { SMSStatus } from './enums/sms-status.enum';
import { SMSType } from './enums/sms-type.enum';
import { SMSProviderEntity } from './sms-provider.entity';

@Entity('sms')
export class SMSEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  countryIsoCode!: string;

  @Column()
  to!: string;

  @Column()
  from!: string;

  @Column()
  message!: string;

  @Column('enum', {
    enum: SMSStatus,
    default: SMSStatus.PENDING,
  })
  status!: SMSStatus;

  @Column('enum', {
    enum: SMSType,
  })
  type!: SMSType;

  @ManyToOne(() => SMSProviderEntity, (provider) => provider.messages)
  provider?: SMSProviderEntity;

  @Column()
  providerId!: number;
}
