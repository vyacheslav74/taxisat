import { ValueTransformer } from 'typeorm';
import { WeekdayScheduleDTO } from '../interfaces/weekday-schedule.dto';

export class WeeklyScheduleTransformer implements ValueTransformer {
  to(value: WeekdayScheduleDTO[]): string | null {
    if (value == null || value.length == 0) return null;
    return JSON.stringify(value);
  }
  from(value: string): WeekdayScheduleDTO[] | null {
    if (value == null || value == '') {
      return [];
    }
    return JSON.parse(value);
  }
}
