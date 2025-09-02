import { HttpService } from '@nestjs/axios';
import { Injectable } from '@nestjs/common';
import { SMSProviderInterface } from './sms-provider.interface';
import { SMSProviderEntity } from '../../entities/sms-provider.entity';
import { firstValueFrom } from 'rxjs';
import { ForbiddenError } from '@nestjs/apollo';
@Injectable()
export class PahappaService implements SMSProviderInterface {
  constructor(private httpService: HttpService) {}

  async sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void> {
    const { providerEntity, phoneNumber, message } = input;

    try {
      // Make an HTTP request to the Pahappa SMS API
      const response = await firstValueFrom(
        this.httpService.get('https://www.egosms.co/api/v1/plain/', {
          params: {
            username: providerEntity.accountId,
            password: providerEntity.authToken,
            number: phoneNumber,
            message: message,
            sender: providerEntity.fromNumber,
            priority: 0,
          },
        }),
      );
      // Handle any errors from the API response
      if (response.status !== 200) {
        throw new ForbiddenError('Failed to send Pahappa OTP');
      }
    } catch (error: any) {
      // Handle any errors that occurred during the OTP sending process
      // You can log the error or perform any necessary error handling
      console.error('Failed to send Pahappa OTP:', error);
      throw new ForbiddenError(`Failed to send Pahappa OTP: ${error.message}`);
    }
  }
}
