import { ForbiddenError } from '@nestjs/apollo';
import { Injectable, Logger } from '@nestjs/common';
import { InjectRedis } from '@songkeys/nestjs-redis';
import Redis from 'ioredis';

@Injectable()
export class AuthRedisService {
  constructor(@InjectRedis() private readonly redisService: Redis) {}

  async createVerificationCode(input: VerifyHash): Promise<{ hash: string }> {
    const hash = Math.random().toString(36).substring(7);
    const verifyHash: VerifyHash = {
      mobileNumber: input.mobileNumber,
      countryIso: input.countryIso,
      code: input.code,
    };
    await this.redisService.hset(`verify:${hash}`, verifyHash);
    await this.redisService.expire(`verify:${hash}`, 60 * 3);
    return { hash };
  }

  async isVerificationCodeValid(
    hash: string,
    code: string,
  ): Promise<VerifyHash | null> {
    const verifyHash: VerifyHash = (await this.redisService.hgetall(
      `verify:${hash}`,
    )) as any;
    Logger.log(verifyHash, 'verifyHash');
    if (!verifyHash) throw new ForbiddenError('EXPIRED');
    if (process.env.DEMO_MODE != null || verifyHash.code == code) {
      return verifyHash;
    } else {
      throw new ForbiddenError('INVALID');
    }
  }

  async deleteVerificationCode(hash: string) {
    await this.redisService.del(`verify:${hash}`);
  }
}

export class VerifyHash {
  mobileNumber!: string;
  countryIso?: string;
  code!: string;
}
