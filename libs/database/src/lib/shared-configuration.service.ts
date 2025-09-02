import { Injectable } from '@nestjs/common';
import * as fs from 'fs';

@Injectable()
export class SharedConfigurationService {
  constructor() {}

  async getConfiguration(): Promise<ICurrentConfiguration | null> {
    console.log(process.env.NODE_ENV);
    const configAddress = `${process.cwd()}/config/config.${
      process.env.NODE_ENV ?? 'production'
    }.json`;
    if (fs.existsSync(configAddress)) {
      const file = await fs.promises.readFile(configAddress, {
        encoding: 'utf-8',
      });
      const config: ICurrentConfiguration = JSON.parse(file as string);
      const firebaseKeyFileAddress = `${process.cwd()}/config/${
        config.firebaseProjectPrivateKey
      }`;
      if (
        config.firebaseProjectPrivateKey != null &&
        fs.existsSync(firebaseKeyFileAddress)
      ) {
        config.purchaseCode = 'RESTRICTED';
        config.firebaseProjectPrivateKey = 'RESTRICTED';
        return config;
      }
      return config;
    } else {
      return {};
    }
  }
}

export interface ICurrentConfiguration {
  purchaseCode?: string;
  backendMapsAPIKey?: string;
  adminPanelAPIKey?: string;
  twilioAccountSid?: string;
  twilioAuthToken?: string;
  twilioFromNumber?: string;
  twilioVerificationCodeSMSTemplate?: string;
  firebaseProjectPrivateKey?: string;
}
