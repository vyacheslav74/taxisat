import { Injectable, Logger } from '@nestjs/common';
import { SMSProviderInterface } from './sms-provider.interface';
import { SMSProviderEntity } from '../../entities/sms-provider.entity';
import { HttpService } from '@nestjs/axios';
import { firstValueFrom } from 'rxjs';
import { ForbiddenError } from '@nestjs/apollo';

@Injectable()
export class BroadnetService implements SMSProviderInterface {
  constructor(private httpService: HttpService) {}

  async sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void> {
    const config = input.providerEntity;
    if (config == null) {
      throw new Error('Broadnet config not found');
    }
    Logger.log('Sending sms to ' + input.phoneNumber + ' using Broadnet');
    Logger.log('Message: ' + input.message);
    Logger.log('Config: ' + JSON.stringify(config));
    const response = await firstValueFrom(
      this.httpService.get('https://gw5s.broadnet.me:8443/websmpp/websms', {
        params: {
          user: config.accountId,
          pass: config.authToken,
          sid: config.fromNumber,
          type: config.smsType,
          mno: input.phoneNumber,
          text: input.message,
        },
      }),
    );
    if (response.status !== 200) {
      throw new ForbiddenError(
        'Broadnet failed to send sms, status: ' + response.statusText,
      );
    }
  }
}
