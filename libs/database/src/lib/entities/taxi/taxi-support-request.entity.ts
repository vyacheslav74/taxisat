import {
  Column,
  CreateDateColumn,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { TaxiSupportRequestActivityEntity } from './taxi-support-request-activity.entity';
import { ComplaintStatus } from '../enums/complaint-status.enum';
import { TaxiOrderEntity } from './taxi-order.entity';
import { OperatorEntity } from '../operator.entity';

@Entity('complaint')
export class TaxiSupportRequestEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  inscriptionTimestamp!: Date;

  @ManyToOne(() => TaxiOrderEntity, (order) => order.complaints)
  request!: TaxiOrderEntity;

  @ManyToMany(
    () => OperatorEntity,
    (operator) => operator.assignedTaxiSupportRequests,
  )
  @JoinTable()
  assignedToStaffs!: OperatorEntity[];

  @Column()
  requestId!: number;

  @Column()
  requestedByDriver!: boolean;

  @Column()
  subject!: string;

  @Column({ nullable: true })
  content?: string;

  @Column('enum', {
    enum: ComplaintStatus,
    default: ComplaintStatus.Submitted,
  })
  status!: ComplaintStatus;

  @OneToMany(
    () => TaxiSupportRequestActivityEntity,
    (activity) => activity.complaint,
  )
  activities!: TaxiSupportRequestActivityEntity[];
}
