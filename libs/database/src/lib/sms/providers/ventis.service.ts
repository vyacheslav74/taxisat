import { HttpService } from '@nestjs/axios';
import { Injectable, Logger } from '@nestjs/common';
import { SMSProviderInterface } from './sms-provider.interface';
import { SMSProviderEntity } from '../../entities/sms-provider.entity';
import { firstValueFrom } from 'rxjs';
import { ForbiddenError } from '@nestjs/apollo';

@Injectable()
export class VentisService implements SMSProviderInterface {
  constructor(private httpService: HttpService) {}

  private async getAccessToken(
    providerEntity: SMSProviderEntity,
  ): Promise<string> {
    try {
      const response = await firstValueFrom(
        this.httpService.post(
          'https://signin.ventis.group/realms/Messaging/protocol/openid-connect/token',
          new URLSearchParams({
            username: providerEntity.accountId!,
            password: providerEntity.smsType!,
            client_id: 'api-messaging',
            grant_type: 'password',
            client_secret: providerEntity.authToken!,
          }),
          {
            headers: {
              'Content-Type': 'application/x-www-form-urlencoded',
            },
          },
        ),
      );

      if (!response.data?.access_token) {
        throw new Error('Failed to retrieve access token');
      }

      return response.data.access_token;
    } catch (error: any) {
      Logger.error(error, 'VentisService.getAccessToken');
      throw new ForbiddenError(
        `Failed to authenticate with Ventis: ${error.message}`,
      );
    }
  }

  async sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void> {
    const { providerEntity, phoneNumber, message } = input;

    try {
      // Get access token from Keycloak
      const accessToken = await this.getAccessToken(providerEntity);

      // Make an HTTP request to the Ventis SMS API
      const response = await firstValueFrom(
        this.httpService.post(
          'https://messaging.ventis.group/messaging/api/v1/message',
          {
            to: phoneNumber.replace(/\D/g, ''), // Remove non-digit characters from phone number
            sender: providerEntity.fromNumber, // Using the predefined sender as specified in docs
            isOTP: 'false', // As per documentation, isOTP is a string
            message: message,
          },
          {
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
              Connection: 'keep-alive',
              Authorization: `Bearer ${accessToken}`,
            },
          },
        ),
      );

      // Handle any errors from the API response
      if (response.status !== 200) {
        throw new ForbiddenError('Failed to send Ventis OTP');
      }
    } catch (error: any) {
      // Handle any errors that occurred during the OTP sending process
      Logger.error(error, 'VentisService.sendOTP');
      throw new ForbiddenError(`Failed to send Ventis OTP: ${error.message}`);
    }
  }
}
