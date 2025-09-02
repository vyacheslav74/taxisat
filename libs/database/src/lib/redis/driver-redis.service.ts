import { Injectable } from '@nestjs/common';
import { Point } from '../interfaces/point';
import { InjectRedis } from '@songkeys/nestjs-redis';
import { Redis } from 'ioredis';

@Injectable()
export class DriverRedisService {
  constructor(@InjectRedis() private readonly redisService: Redis) {}

  async setLocation(driverId: number, point: Point) {
    await Promise.all([
      this.redisService.geoadd(
        RedisKeys.Driver,
        point.lng,
        point.lat,
        driverId.toString(),
      ),

      this.redisService.zadd(
        RedisKeys.DriverLocationTime,
        Date.now(),
        driverId,
      ),
    ]);
    if (point.heading) {
      this.redisService.hset(
        RedisKeys.DriverHeading,
        driverId.toString(),
        point.heading,
      );
    }
  }

  async getDriverCoordinate(driverId: number): Promise<Point | null> {
    const pos = await this.redisService.geopos(
      RedisKeys.Driver,
      driverId.toString(),
    );
    const heading = await this.redisService.hget(
      RedisKeys.DriverHeading,
      driverId.toString(),
    );
    return pos[0]
      ? {
          lat: parseFloat(pos[0][1]),
          lng: parseFloat(pos[0][0]),
          heading: heading ? parseInt(heading) : undefined,
        }
      : null;
  }

  async getClose(
    point: Point,
    distance: number,
  ): Promise<DriverLocationWithId[]> {
    const bare = (await this.redisService.call(
      'GEORADIUS',
      RedisKeys.Driver,
      point.lng,
      point.lat,
      distance,
      'm',
      'WITHCOORD',
    )) as string[][];

    const result = bare.map(async (item: string[]) => {
      const heading = await this.redisService.hget(
        RedisKeys.DriverHeading,
        item[0] as string,
      );
      return {
        driverId: parseInt(item[0] as string),
        location: {
          lat: parseFloat(item[1][1]),
          lng: parseFloat(item[1][0]),
          heading: heading ? parseInt(heading) : undefined,
        },
      };
    });
    return Promise.all(result);
  }

  async getAllOnline(center: Point, count: number): Promise<IOnlineDriver[]> {
    const bare = (await this.redisService.call(
      'GEORADIUS',
      RedisKeys.Driver,
      center.lng.toString(),
      center.lat.toString(),
      '22000',
      'km',
      'WITHCOORD',
      `COUNT`,
      count.toString(),
      'ASC',
    )) as string[][];
    const times: string[] = await this.redisService.zrangebyscore(
      RedisKeys.DriverLocationTime,
      0,
      new Date().getTime(),
      'WITHSCORES',
    );
    const result = bare.map(async (x: string[]) => {
      const heading = await this.redisService.hget(
        RedisKeys.DriverHeading,
        x[0] as string,
      );
      return {
        driverId: parseInt(x[0] as string),
        location: {
          lat: parseFloat(x[1][1]),
          lng: parseFloat(x[1][0]),
          heading: heading ? parseInt(heading) : undefined,
        },
        lastUpdatedAt: new Date(
          parseInt(times[times.indexOf(x[0] as string) + 1]),
        ),
      };
    });
    return Promise.all(result);
  }

  async expire(userId: number[]) {
    await this.redisService.zrem(RedisKeys.Driver, userId);
    await this.redisService.zrem(RedisKeys.DriverLocationTime, userId);
  }
}

enum RedisKeys {
  Driver = 'driver',
  DriverHeading = 'driver-heading',
  DriverLocationTime = 'driver-location-time',
}

export type DriverLocation = {
  location: Point;
};
export type DriverLocationWithId = DriverLocation & { driverId: number };

export type DriverLocationWithDist = DriverLocation & { distance: number };

export type DriverLocationWithDistAndId = DriverLocationWithDist & {
  driverId: number;
};

export interface IOnlineDriver {
  driverId: number;
  location: Point;
  lastUpdatedAt: Date;
}
