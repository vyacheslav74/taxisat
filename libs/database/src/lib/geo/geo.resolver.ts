import { Args, Int, Query, Resolver } from '@nestjs/graphql';
import { PlaceDTO } from './dto/place.dto';
import { GeoProvider } from './dto/geo-provider.enum';
import { GoogleGeoService } from './google-geo.service';
import { NominitamGeoService } from './nominitam-geo.service';
import { Point } from '../interfaces/point';
import { SharedConfigurationService } from '../shared-configuration.service';

@Resolver()
export class GeoResolver {
  constructor(
    private googleGeoService: GoogleGeoService,
    private nominitamGeoService: NominitamGeoService,
    private configService: SharedConfigurationService,
  ) {}

  @Query(() => [PlaceDTO])
  async getPlaces(
    @Args('keyword') keyword: string,
    @Args('location', { nullable: true }) location?: Point,
    @Args('radius', {
      nullable: true,
      type: () => Int,
      description: 'Search radius from location argument in meters',
    })
    radius?: number,
    @Args('language', { nullable: true }) language?: string,
    @Args('provider', { nullable: true, type: () => GeoProvider })
    provider?: GeoProvider,
    @Args('apiKey', { nullable: true }) apiKey?: string,
  ): Promise<PlaceDTO[]> {
    const serverProvider = process.env.GEO_PROVIDER as EnvGeoProvider;
    const configs = await this.configService.getConfiguration();
    const serverApiKey = configs?.backendMapsAPIKey;
    if (serverApiKey == null && apiKey?.length == 0) {
      throw new Error('Invalid API Key');
    }
    if (serverProvider != null) {
      if (serverProvider == 'google') {
        provider = GeoProvider.GOOGLE;
      }
      if (serverProvider == 'nominitam') {
        provider = GeoProvider.NOMINATIM;
      }
    }
    if (provider === GeoProvider.GOOGLE) {
      return this.googleGeoService.getPlaces({
        keyword,
        location,
        radius,
        language,
      });
    } else {
      return this.nominitamGeoService.getPlaces({
        keyword,
        location,
        radius,
        language,
      });
    }
  }

  @Query(() => PlaceDTO)
  async reverseGeocode(
    @Args('location') location: Point,
    @Args('language', { nullable: true }) language?: string,
    @Args('provider', { nullable: true, type: () => GeoProvider })
    provider?: GeoProvider,
    @Args('apiKey', { nullable: true }) apiKey?: string,
  ): Promise<PlaceDTO> {
    const serverProvider = process.env.GEO_PROVIDER as EnvGeoProvider;
    const configs = await this.configService.getConfiguration();
    const serverApiKey = configs?.backendMapsAPIKey;
    if (serverApiKey == null && apiKey?.length == 0) {
      throw new Error('Invalid API Key');
    }
    if (serverProvider != null) {
      if (serverProvider == 'google') {
        provider = GeoProvider.GOOGLE;
      }
      if (serverProvider == 'nominitam') {
        provider = GeoProvider.NOMINATIM;
      }
    }
    if (provider === GeoProvider.GOOGLE) {
      return this.googleGeoService.reverseGeocode({
        lat: location.lat,
        lng: location.lng,
        language,
      });
    } else {
      return this.nominitamGeoService.reverseGeocode({
        lat: location.lat,
        lng: location.lng,
        language,
      });
    }
  }
}

type EnvGeoProvider = 'google' | 'nominitam';
