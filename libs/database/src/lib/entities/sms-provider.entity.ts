import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { SMSProviderType } from './enums/sms-provider-type.enum';
import { SMSEntity } from './sms.entity';

@Entity('sms_provider')
export class SMSProviderEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column({
    type: 'enum',
    enum: SMSProviderType,
  })
  type!: SMSProviderType;

  @Column({
    default: false,
  })
  isDefault!: boolean;

  @Column()
  name!: string;

  @Column({
    nullable: true,
  })
  accountId?: string;

  @Column({
    nullable: true,
  })
  authToken?: string;

  @Column({
    nullable: true,
  })
  fromNumber?: string;

  @Column('text', {
    nullable: true,
  })
  verificationTemplate?: string; // The template for the SMS, e.g. "Your verification code is {code}", "{code}" will be replaced with the actual code.

  @Column({
    nullable: true,
  })
  smsType?: string; // Sometimes the SMS provider requests for the type of the SMS, e.g. OTP, Transactional, priority, language, etc.

  @CreateDateColumn()
  createdAt!: Date;

  @DeleteDateColumn()
  deletedAt?: Date;

  @OneToMany(() => SMSEntity, (message) => message.provider)
  messages!: SMSEntity[];
}
