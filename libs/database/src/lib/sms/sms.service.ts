import { Injectable } from '@nestjs/common';
import { Twilio } from 'twilio';
import { SharedConfigurationService } from '../shared-configuration.service';
import { SMSProviderService } from './sms-provider.service';
import { SMSProviderType } from '../entities/enums/sms-provider-type.enum';
import { BroadnetService } from './providers/broadnet.service';
import { TwilioService } from './providers/twilio.service';
import { PlivoService } from './providers/plivo.service';
import { VonageService } from './providers/vonage.service';
import { ForbiddenError } from '@nestjs/apollo';
import { PahappaService } from './providers/pahappa.service';
import { VentisService } from './providers/ventis.service';

@Injectable()
export class SMSService {
  constructor(
    private smsProviderService: SMSProviderService,
    private sharedConfigService: SharedConfigurationService,
    private twilioService: TwilioService,
    private broadnetService: BroadnetService,
    private plivoService: PlivoService,
    private vonageService: VonageService,
    private pahappaService: PahappaService,
    private ventisService: VentisService,
  ) {}

  async sendVerificationCodeSms(phoneNumber: string): Promise<string> {
    const defaultProvider = await this.smsProviderService.getDefaultProvider();
    const random6Digit = Math.floor(100000 + Math.random() * 900000).toString();
    const message =
      defaultProvider.verificationTemplate?.replace('{code}', random6Digit) ??
      'OTP is {code}';
    switch (defaultProvider?.type) {
      case SMSProviderType.Twilio:
        await this.twilioService.sendOTP({
          providerEntity: defaultProvider,
          phoneNumber,
          message,
        });
        break;

      case SMSProviderType.BroadNet:
        await this.broadnetService.sendOTP({
          providerEntity: defaultProvider,
          phoneNumber,
          message,
        });
        break;

      case SMSProviderType.Vonage:
        await this.vonageService.sendOTP({
          providerEntity: defaultProvider,
          phoneNumber,
          message,
        });
        break;

      case SMSProviderType.Plivo:
        await this.plivoService.sendOTP({
          providerEntity: defaultProvider,
          phoneNumber,
          message,
        });
        break;

      case SMSProviderType.Pahappa:
        await this.pahappaService.sendOTP({
          providerEntity: defaultProvider,
          phoneNumber,
          message,
        });
        break;

      case SMSProviderType.VentisSMS:
        await this.ventisService.sendOTP({
          providerEntity: defaultProvider,
          phoneNumber,
          message,
        });
        break;

      case SMSProviderType.Firebase:
        return random6Digit;

      default:
        throw new ForbiddenError('The default SMS provider is not supported');
    }
    return random6Digit;
  }

  async sendVerificationCodeWhatsapp(phoneNumber: string): Promise<string> {
    const config = await this.sharedConfigService.getConfiguration();
    if (
      config?.twilioAccountSid == null ||
      config?.twilioAuthToken == null ||
      config?.twilioFromNumber == null ||
      config.twilioVerificationCodeSMSTemplate == null
    )
      throw new Error('twilio config not found');
    const client = new Twilio(
      config.twilioAccountSid!,
      config.twilioAuthToken!,
    );
    const random6Digit = Math.floor(100000 + Math.random() * 900000).toString();
    await client.messages.create({
      body: config.twilioVerificationCodeSMSTemplate.replace(
        '{code}',
        random6Digit,
      ),
      from: config.twilioFromNumber!,
      to: `whatsapp:+${phoneNumber}`,
    });
    return random6Digit;
  }
}
