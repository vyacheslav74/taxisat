import { InputType, ObjectType } from '@nestjs/graphql';
import { Weekday } from './weekday-multiplier.dto';

@ObjectType('WeekdaySchedule')
@InputType('WeekdayScheduleInput')
export class WeekdayScheduleDTO {
  weekday!: Weekday;
  openingHours!: TimeRangeDTO[];
}

@ObjectType('TimeRange')
@InputType('OpeningHoursInput')
export class TimeRangeDTO {
  open!: string;
  close!: string;
}
