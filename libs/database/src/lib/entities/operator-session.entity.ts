import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { OperatorEntity } from './operator.entity';
import { SessionInfo } from './fragments/session-info';

@Entity('operator_session')
export class OperatorSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => SessionInfo)
  sessionInfo!: SessionInfo;

  @ManyToOne(() => OperatorEntity, (operator) => operator.sessions, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  operator!: OperatorEntity;

  @Column()
  operatorId!: number;
}
