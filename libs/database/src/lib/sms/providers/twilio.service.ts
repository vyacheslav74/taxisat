import { Injectable } from '@nestjs/common';
import { SMSProviderInterface } from './sms-provider.interface';
import { SMSProviderEntity } from '../../entities/sms-provider.entity';
import { Twilio } from 'twilio';
import { ForbiddenError } from '@nestjs/apollo';

@Injectable()
export class TwilioService implements SMSProviderInterface {
  constructor() {}

  async sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void> {
    try {
      const client = new Twilio(
        input.providerEntity.accountId!,
        input.providerEntity.authToken!,
      );
      await client.messages.create({
        body: input.message,
        from: input.providerEntity.fromNumber,
        to: `+${input.phoneNumber}`,
      });
    } catch (error: unknown) {
      throw new ForbiddenError((error as Error).message);
    }
  }
}
