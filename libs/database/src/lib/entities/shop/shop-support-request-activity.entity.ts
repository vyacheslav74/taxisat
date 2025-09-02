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
import { ShopSupportRequestEntity } from './shop-support-request.entity';

@Entity('shop_support_request_activity')
export class ShopSupportRequestActivityEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: ComplaintActivityType,
  })
  type!: ComplaintActivityType;

  @ManyToOne(() => OperatorEntity, (operator) => operator.complaintActivities)
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
    () => ShopSupportRequestEntity,
    (supportRequest) => supportRequest.activities,
  )
  supportRequest!: ShopSupportRequestEntity;

  @Column()
  supportRequestId!: number;
}
