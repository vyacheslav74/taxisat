import { ValueTransformer } from 'typeorm';
import { Time } from '../interfaces/time.dto';

export class TimeTransformer implements ValueTransformer {
  to(value: Time): string {
    return `${value.hour}:${value.minute}`;
  }
  from(value: string): Time {
    const time = new Time();
    time.hour = parseInt(value.split(':')[0]);
    time.minute = parseInt(value.split(':')[1]);
    return time;
  }
}
