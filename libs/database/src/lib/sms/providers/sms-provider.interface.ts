import { SMSProviderEntity } from '../../entities/sms-provider.entity';

export abstract class SMSProviderInterface {
  abstract sendOTP(input: {
    providerEntity: SMSProviderEntity;
    phoneNumber: string;
    message: string;
  }): Promise<void>;
}
