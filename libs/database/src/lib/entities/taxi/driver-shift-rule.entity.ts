import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';
import { TimeFrequency } from '../enums/time-frequency.enum';

@Entity('driver_shift_rule')
export class DriverShiftRuleEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: TimeFrequency,
  })
  timeFrequency!: TimeFrequency;

  @Column('int')
  maxHoursPerFrequency!: number;

  @Column('int', {
    default: 0,
  })
  mandatoryBreakMinutes!: number;
}
