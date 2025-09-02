import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  NoVersionOrUpdateDateColumnError,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { MessageStatus } from '../enums/message-status.enum';
import { TaxiOrderEntity } from './taxi-order.entity';

@Entity('request_chat')
export class OrderMessageEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  sentAt!: Date;

  @Column()
  sentByDriver!: boolean;

  @Column('enum', {
    name: 'state',
    enum: MessageStatus,
    default: MessageStatus.Sent,
  })
  status!: MessageStatus;

  @Column()
  content!: string;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.conversation)
  request!: TaxiOrderEntity;

  @Column()
  requestId!: number;
}
