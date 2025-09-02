import { DynamicModule, Module, Provider } from '@nestjs/common';

import { DriverNotificationService } from './driver-notification.service';
import { RiderNotificationService } from './rider-notification.service';
import { getConfig } from 'license-verify';

@Module({})
export class FirebaseNotificationModule {
  static async register(): Promise<DynamicModule> {
    let providers: Provider[] = [];

    if (await getConfig(process.env.NODE_ENV ?? 'prod')) {
      providers = [DriverNotificationService, RiderNotificationService];
    }
    return {
      module: FirebaseNotificationModule,
      imports: [],
      providers: providers,
      exports: providers,
    };
  }
}
