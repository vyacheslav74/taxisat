import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { SMSProviderEntity } from '../entities/sms-provider.entity';
import { Repository } from 'typeorm';
import { ForbiddenError } from '@nestjs/apollo';

@Injectable()
export class SMSProviderService {
  constructor(
    @InjectRepository(SMSProviderEntity)
    private readonly smsProviderRepository: Repository<SMSProviderEntity>,
  ) {}

  async getDefaultProvider(): Promise<SMSProviderEntity> {
    const defaultProvider = await this.smsProviderRepository.findOne({
      where: { isDefault: true },
    });
    if (defaultProvider == null) {
      throw new ForbiddenError('Default SMS provider not found');
    }
    return defaultProvider;
  }
}
