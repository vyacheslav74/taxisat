import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { CustomerEntity } from './customer.entity';
import { SessionInfo } from './fragments/session-info';

@Entity('customer_session')
export class CustomerSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => SessionInfo)
  sessionInfo!: SessionInfo;

  @ManyToOne(() => CustomerEntity, (customer) => customer.sessions, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  customer!: CustomerEntity;

  @Column()
  customerId!: number;
}
