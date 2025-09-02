import { Injectable } from '@nestjs/common';
import { PlaceDTO } from './dto/place.dto';
import { HttpService } from '@nestjs/axios';
import { firstValueFrom } from 'rxjs';

@Injectable()
export class NominitamGeoService {
  constructor(private httpService: HttpService) {}

  async getPlaces(input: {
    keyword: string;
    location?: {
      lat: number;
      lng: number;
    };
    radius?: number;
    language?: string;
  }): Promise<PlaceDTO[]> {
    const result = await firstValueFrom(
      this.httpService.get('https://nominatim.openstreetmap.org/search', {
        params: {
          q: input.keyword,
          format: 'json',
          addressdetails: '1',
          viewbox:
            input.location == null
              ? null
              : `${input.location.lng - 1},${input.location.lat - 1},${
                  input.location.lng + 1
                },${input.location.lat + 1}`,
        },
      }),
    );
    const mapped = result.data.map((prediction: NominitamPlace) => {
      const placeDTO: PlaceDTO = {
        point: {
          lat: prediction.lat,
          lng: prediction.lon,
        },
        title: prediction.name,
        address: prediction.display_name,
      };
      return placeDTO;
    });
    return mapped;
  }

  async reverseGeocode(input: {
    lat: number;
    lng: number;
    language?: string;
  }): Promise<PlaceDTO> {
    const result = await firstValueFrom(
      this.httpService.get('https://nominatim.openstreetmap.org/reverse', {
        params: {
          lat: input.lat,
          lon: input.lng,
          format: 'json',
        },
      }),
    );
    return {
      point: {
        lat: input.lat,
        lng: input.lng,
      },
      title: result.data.name,
      address: result.data.display_name,
    };
  }
}

interface NominitamPlace {
  lat: number;
  lon: number;
  name: string;
  display_name: string;
}
