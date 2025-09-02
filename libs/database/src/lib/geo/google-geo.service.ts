import { Client } from '@googlemaps/google-maps-services-js';
import { Injectable, Logger } from '@nestjs/common';
import { SharedConfigurationService } from 'libs/database/src/lib/shared-configuration.service';
import { PlaceDTO } from './dto/place.dto';
import { Point } from '@ridy/database';

@Injectable()
export class GoogleGeoService {
  googleClient = new Client({});

  constructor(private configurationService: SharedConfigurationService) {}

  async getPlaces(input: {
    keyword: string;
    location?: Point;
    radius?: number;
    language?: string;
  }): Promise<PlaceDTO[]> {
    const config = await this.configurationService.getConfiguration();
    const results = [];
    const response = await this.googleClient.placeQueryAutocomplete({
      params: {
        input: input.keyword,
        location: input.location,
        radius:
          input.location != null && input.radius != null
            ? input.radius
            : undefined,
        language: input.language as any,
        key: config!.backendMapsAPIKey!,
      },
    });
    for (let item of response.data.predictions) {
      if (item.place_id == null) continue;
      const placeDetails = await this.googleClient.placeDetails({
        params: {
          place_id: item.place_id!,
          key: config!.backendMapsAPIKey!,
        },
      });
      if (
        placeDetails.data.result.geometry?.location.lat == null ||
        placeDetails.data.result.geometry?.location.lng == null ||
        placeDetails.data.result.formatted_address == null
      )
        continue;
      results.push({
        point: {
          lat: placeDetails.data.result.geometry!.location.lat,
          lng: placeDetails.data.result.geometry!.location.lng,
        },
        title: placeDetails.data.result.name,
        address: placeDetails.data.result.formatted_address,
      });
    }
    // Sort by distance
    results.sort((a, b) => {
      if (input.location == null) return 0;
      const aDistance =
        Math.pow(a.point.lat - input.location.lat, 2) +
        Math.pow(a.point.lng - input.location.lng, 2);
      const bDistance =
        Math.pow(b.point.lat - input.location.lat, 2) +
        Math.pow(b.point.lng - input.location.lng, 2);
      return aDistance - bDistance;
    });
    // const response = await this.googleClient.textSearch({
    //   params: {
    //     query: input.keyword,
    //     key: config!.backendMapsAPIKey!,
    //   },
    // });
    // if (response.data.results.length == 0) return [];
    // for (let i = 0; i < response.data.results.length; i++) {
    //   results.push({
    //     point: {
    //       lat: response.data.results[i].geometry?.location.lat,
    //       lng: response.data.results[i].geometry?.location.lng,
    //     },
    //     title: response.data.results[i].name,
    //     address: response.data.results[i].formatted_address,
    //   });
    // }
    // const response = await this.googleClient.placeAutocomplete({
    //   params: {
    //     input: input.keyword,
    //     location: input.location,
    //     radius: input.radius,
    //     language: input.language as any,
    //     key: config!.backendMapsAPIKey!,
    //   },
    // });
    // if (response.data.predictions.length == 0) return [];
    // for (let i = 0; i < response.data.predictions.length; i++) {
    //   const geocoding = await this.googleClient.reverseGeocode({
    //     params: {
    //       place_id: response.data.predictions[i].place_id,
    //       key: config!.backendMapsAPIKey!,
    //     },
    //   });
    //   results.push({
    //     point: {
    //       lat: geocoding.data.results[0].geometry.location.lat,
    //       lng: geocoding.data.results[0].geometry.location.lng,
    //     },
    //     title: response.data.predictions[i].structured_formatting.main_text,
    //     address:
    //       response.data.predictions[i].structured_formatting.secondary_text ??
    //       '',
    //   });
    // }
    return results;
  }

  async reverseGeocode(input: {
    lat: number;
    lng: number;
    language?: string;
  }): Promise<PlaceDTO> {
    const config = await this.configurationService.getConfiguration();
    const response = await this.googleClient.reverseGeocode({
      params: {
        latlng: {
          lat: input.lat,
          lng: input.lng,
        },
        language: input.language as any,
        key: config!.backendMapsAPIKey!,
      },
    });
    return {
      point: {
        lat: input.lat,
        lng: input.lng,
      },
      address: response.data.results[0].formatted_address,
    };
  }
}
