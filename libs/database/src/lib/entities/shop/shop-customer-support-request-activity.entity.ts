import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { ComplaintActivityType } from '../enums/complaint-activity-type.enum';
import { OperatorEntity } from '../operator.entity';
import { ComplaintStatus } from '../enums/complaint-status.enum';
import { ShopCustomerSupportRequestEntity } from './shop-customer-support-request.entity';

@Entity('shop_customer_support_request_activity')
export class ShopCustomerSupportRequestActivityEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: ComplaintActivityType,
  })
  type!: ComplaintActivityType;

  @ManyToOne(() => OperatorEntity)
  actor!: OperatorEntity;

  actorId!: number;

  @ManyToMany(() => OperatorEntity)
  @JoinTable()
  assignedToStaffs?: OperatorEntity[];

  @ManyToMany(() => OperatorEntity)
  @JoinTable()
  unassignedFromStaffs?: OperatorEntity[];

  @Column({ nullable: true })
  comment?: string;

  @Column('enum', {
    enum: ComplaintStatus,
    nullable: true,
  })
  statusFrom?: ComplaintStatus;

  @Column('enum', {
    enum: ComplaintStatus,
    nullable: true,
  })
  statusTo?: ComplaintStatus;

  @ManyToOne(
    () => ShopCustomerSupportRequestEntity,
    (supportRequest) => supportRequest.activities,
  )
  supportRequest!: ShopCustomerSupportRequestEntity;

  @Column()
  supportRequestId!: number;
}
