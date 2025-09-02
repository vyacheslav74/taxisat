import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Point } from '../../interfaces/point';
import { PointTransformer } from '../../transformers/point.transformer';
import { SOSStatus } from '../enums/sos-status.enum';
import { TaxiOrderEntity } from './taxi-order.entity';
import { SOSActivityEntity } from './sos-activity.entity';
import { SOSReasonEntity } from './sos-reason.entity';

@Entity('sos')
export class SOSEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @CreateDateColumn()
  createdAt!: Date;

  @Column('enum', {
    enum: SOSStatus,
    default: SOSStatus.Submitted,
  })
  status!: SOSStatus;

  @Column({ nullable: true })
  comment?: string;

  @ManyToOne(() => SOSReasonEntity, { nullable: true })
  reason?: SOSReasonEntity;

  @Column({ nullable: true })
  reasonId?: number;

  @Column('point', {
    transformer: new PointTransformer(),
    nullable: true,
  })
  location?: Point;

  @ManyToOne(() => TaxiOrderEntity, (request) => request.sosCalls)
  request!: TaxiOrderEntity;

  @Column()
  requestId!: number;

  @Column()
  submittedByRider!: boolean;

  @OneToMany(() => SOSActivityEntity, (activity) => activity.sos)
  activities!: SOSActivityEntity[];
}
