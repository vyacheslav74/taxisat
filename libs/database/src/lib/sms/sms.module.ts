import { Module } from '@nestjs/common';
import { SMSService } from './sms.service';
import { SharedConfigurationService } from '../shared-configuration.service';
import { SMSProviderService } from './sms-provider.service';
import { TwilioService } from './providers/twilio.service';
import { BroadnetService } from './providers/broadnet.service';
import { PlivoService } from './providers/plivo.service';
import { VonageService } from './providers/vonage.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { SMSProviderEntity } from '../entities/sms-provider.entity';
import { HttpModule } from '@nestjs/axios';
import { PahappaService } from './providers/pahappa.service';
import { AuthRedisService } from './auth-redis.service';
import { VentisService } from './providers/ventis.service';

@Module({
  imports: [TypeOrmModule.forFeature([SMSProviderEntity]), HttpModule],
  providers: [
    SMSService,
    SMSProviderService,
    TwilioService,
    PlivoService,
    BroadnetService,
    PahappaService,
    VonageService,
    VentisService,
    SharedConfigurationService,
    AuthRedisService,
  ],
  exports: [SMSService, AuthRedisService],
})
export class SMSModule {}
