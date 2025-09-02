import { Injectable } from '@nestjs/common';
import { InjectRedis } from '@songkeys/nestjs-redis';
import Redis from 'ioredis';

@Injectable()
export class ConfigRedisService {
  constructor(@InjectRedis() private readonly redisService: Redis) {}

  async getConfig(key: ConfigKey) {
    const result = await this.redisService.get(`config:${key}`);
    if (result == null) return this.getDefault(key);
    return result;
  }

  async setConfig(key: ConfigKey, value: string) {
    await this.redisService.set(`config:${key}`, value);
  }

  getDefault(key: ConfigKey) {
    if (key == 'twilio:verificationCodeSMSTemplate') {
      return 'Your verification code is {code}';
    }
    return null;
  }
}

type ConfigKey =
  | 'twilio:accountSid'
  | 'twilio:authToken'
  | 'twilio:fromNumber'
  | 'twilio:verificationCodeSMSTemplate';
