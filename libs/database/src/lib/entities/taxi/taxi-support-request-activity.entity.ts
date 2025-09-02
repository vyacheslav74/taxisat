import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { TaxiSupportRequestEntity } from './taxi-support-request.entity';
import { ComplaintActivityType } from '../enums/complaint-activity-type.enum';
import { OperatorEntity } from '../operator.entity';
import { ComplaintStatus } from '../enums/complaint-status.enum';

@Entity('complaint_activity')
export class TaxiSupportRequestActivityEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: ComplaintActivityType,
  })
  type!: ComplaintActivityType;

  @CreateDateColumn()
  createdAt!: Date;

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
    () => TaxiSupportRequestEntity,
    (complaint) => complaint.activities,
  )
  complaint!: TaxiSupportRequestEntity;

  @Column()
  complaintId!: number;
}
