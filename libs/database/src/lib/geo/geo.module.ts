import { HttpModule } from '@nestjs/axios';
import { Module } from '@nestjs/common';
import { GeoResolver } from './geo.resolver';
import { GoogleGeoService } from './google-geo.service';
import { NominitamGeoService } from './nominitam-geo.service';
import { SharedConfigurationService } from 'libs/database/src/lib/shared-configuration.service';

@Module({
  imports: [HttpModule],
  providers: [
    GeoResolver,
    GoogleGeoService,
    NominitamGeoService,
    SharedConfigurationService,
  ],
})
export class GeoModule {}
