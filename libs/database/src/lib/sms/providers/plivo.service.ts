import { Injectable, Logger } from '@nestjs/common';
import { Client } from 'plivo';
import { SMSProviderInterface } from './sms-provider.interface';
import { SMSProviderEntity } from '../../entities/sms-provider.entity';

@Injectable()
export class PlivoService implements SMSProviderInterface {
  constructor() {}

  async sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void> {
    const client = new Client(
      input.providerEntity.accountId,
      input.providerEntity.authToken,
    );
    const result = await client.messages.create(
      input.providerEntity.fromNumber,
      input.phoneNumber,
      input.message,
    );
    Logger.log(JSON.stringify(result), 'PlivoService');
  }
}
