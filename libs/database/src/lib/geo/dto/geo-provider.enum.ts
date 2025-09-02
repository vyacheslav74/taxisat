import { registerEnumType } from '@nestjs/graphql';

export enum GeoProvider {
  GOOGLE = 'google',
  MAPBOX = 'mapbox',
  NOMINATIM = 'nominatim',
}
registerEnumType(GeoProvider, { name: 'GeoProvider' });
