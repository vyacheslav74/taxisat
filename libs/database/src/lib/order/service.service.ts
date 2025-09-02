import { Injectable, Logger } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ServiceEntity } from '../entities/taxi/service.entity';
import { Repository } from 'typeorm';

const weekdays = [
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
];

@Injectable()
export class ServiceService {
  constructor(
    @InjectRepository(ServiceEntity)
    private service: Repository<ServiceEntity>,
  ) {}

  calculateCost(
    service: ServiceEntity,
    distance: number,
    duration: number,
    eta: Date,
    fleetMultiplier: number = 1,
    isResident: boolean = true,
  ) {
    let i = service.baseFare;
    let multiplier = 1;
    console.log(
      `Calculating Trip fee with base fare ${i} distance of ${distance} meters and duration of ${duration}`,
    );
    i +=
      (service.perHundredMeters * distance) / 100 +
      (service.perMinuteDrive * duration) / 60;
    console.log(`Initial calculation without multiplier: ${i}`);
    let ratioCost = 0;
    let newRatioCost = 0;
    let ratioDistance = 0;
    let endDistance = 0;
    for (const _multiplier of service.distanceMultipliers) {
      if (distance > _multiplier.distanceFrom) {
        endDistance =
          distance > _multiplier.distanceTo ? _multiplier.distanceTo : distance;
        ratioDistance = endDistance - _multiplier.distanceFrom;
        ratioCost = (ratioDistance / distance) * i;
        newRatioCost = ratioCost * _multiplier.multiply;
        i = i - ratioCost + newRatioCost;
        console.log(`After distance multiplier: ${i}`);
      }
    }
    for (const _multiplier of service.timeMultipliers) {
      const startMinutes =
        parseInt(_multiplier.startTime.split(':')[0]) * 60 +
        parseInt(_multiplier.startTime.split(':')[1]);
      const nowMinutes = eta.getHours() * 60 + eta.getMinutes();
      const endMinutes =
        parseInt(_multiplier.endTime.split(':')[0]) * 60 +
        parseInt(_multiplier.endTime.split(':')[1]);
      if (nowMinutes >= startMinutes && nowMinutes <= endMinutes) {
        i *= _multiplier.multiply;
        multiplier *= _multiplier.multiply;
        console.log(`After time multiplier: ${i}`);
      }
    }
    for (const _multiplier of service.weekdayMultipliers) {
      if (_multiplier.weekday === weekdays[eta.getDay()]) {
        i *= _multiplier.multiply;
        multiplier *= _multiplier.multiply;
        console.log(`After weekday multiplier: ${i}`);
      }
    }
    for (const _multiplier of service.dateRangeMultipliers) {
      const startDate = new Date(_multiplier.startDate);
      const endDate = new Date(_multiplier.endDate);
      if (eta >= startDate && eta <= endDate) {
        i *= _multiplier.multiply;
        multiplier *= _multiplier.multiply;
        console.log(`After date range multiplier: ${i}`);
      }
    }
    i *= fleetMultiplier;
    multiplier *= fleetMultiplier;
    console.log(`After fleet multiplier: ${i}`);
    if (i < service.minimumFee * multiplier) {
      i = service.minimumFee * multiplier;
      console.log(`After Minimum fee applied: ${i}`);
    }
    if (isResident === false) {
      i *= service.touristMultiplier;
    }
    Logger.log(
      `Final calculation with base fare ${service.baseFare} distance of ${distance} meters and duration of ${duration} is ${i}`,
      'ServiceService',
    );

    if (service.roundingFactor != null && service.roundingFactor > 0) {
      console.log(`Rounding factor: ${service.roundingFactor}`);
      console.log(`Before Rounding factor applied: ${i}`);
      i = Math.round(i / service.roundingFactor) * service.roundingFactor;
      console.log(`After Rounding factor applied: ${i}`);
    }
    return i ?? 0;
  }

  getWithId(id: number): Promise<ServiceEntity | null> {
    return this.service.findOneBy({ id });
  }
}
