import { Injectable, Logger } from '@nestjs/common';
import { SMSProviderInterface } from './sms-provider.interface';
import { HttpService } from '@nestjs/axios';
import { SMSProviderEntity } from '../../entities/sms-provider.entity';
import { firstValueFrom } from 'rxjs';
import { ForbiddenError } from '@nestjs/apollo';

@Injectable()
export class VonageService implements SMSProviderInterface {
  constructor(private httpService: HttpService) {}

  async sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void> {
    const config = input.providerEntity;
    const response = await firstValueFrom(
      this.httpService.post(
        `https://rest.nexmo.com/sms/json`,
        {
          api_key: config.accountId,
          api_secret: config.authToken,
          from: config.fromNumber,
          to: input.phoneNumber,
          text: input.message,
        },
        {
          headers: {
            'Content-Type': 'application/json',
          },
        },
      ),
    );
    Logger.log(JSON.stringify(response.data), 'VonageService');
    if (response.status !== 200) {
      throw new ForbiddenError(
        'Vonage failed to send sms, status: ' + response.statusText,
      );
    }
  }
}
