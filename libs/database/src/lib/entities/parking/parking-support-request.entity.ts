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
import { ParkOrderEntity } from './park-order.entity';
import { OperatorEntity } from '../operator.entity';
import { ComplaintStatus } from '../enums/complaint-status.enum';
import { ParkingSupportRequestActivityEntity } from './parking-support-request-activity.entity';

@Entity('parking_support_request')
export class ParkingSupportRequestEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @ManyToOne(() => ParkOrderEntity, (order) => order.supportRequests)
  parkOrder?: ParkOrderEntity;

  @Column({
    nullable: true,
  })
  parkOrderId?: number;

  @ManyToMany(
    () => OperatorEntity,
    (staff) => staff.assignedParkingSupportRequests,
  )
  @JoinTable()
  assignedToStaffs!: OperatorEntity[];

  @Column()
  requestedByOwner!: boolean;

  @Column()
  subject!: string;

  @Column('text', { nullable: true })
  content?: string;

  @Column('enum', {
    enum: ComplaintStatus,
    default: ComplaintStatus.Submitted,
  })
  status!: ComplaintStatus;

  @OneToMany(
    () => ParkingSupportRequestActivityEntity,
    (activity) => activity.supportRequest,
  )
  activities!: ParkingSupportRequestActivityEntity[];
}
