import { GoogleServicesService } from './google-services.service';
import { Point } from '../../interfaces/point';
import { ShopEntity } from '../../entities/shop/shop.entity';
import { RiderAddressEntity } from '../../entities/rider-address.entity';
import { Test } from '@nestjs/testing';
import { SharedConfigurationService } from '../../shared-configuration.service';
import * as DotEnv from 'dotenv';

describe('GoogleServicesService', () => {
  let googleServicesService: GoogleServicesService;

  beforeEach(async () => {
    DotEnv.config();

    const moduleRef = await Test.createTestingModule({
      imports: [],
      providers: [SharedConfigurationService, GoogleServicesService],
    }).compile();

    googleServicesService = await moduleRef.resolve(GoogleServicesService);
  });

  describe('getSumDistanceAndDuration', () => {
    it('should return the sum of distance and duration for a given set of points', async () => {
      const points: Point[] = [
        { lat: 37.7749, lng: -122.4194 } as Point,
        { lat: 34.0522, lng: -118.2437 } as Point,
        { lat: 32.7157, lng: -117.1611 } as Point,
      ];

      const result = await googleServicesService.getSumDistanceAndDuration(
        points,
      );

      expect(result.distance).toBeGreaterThan(0);
      expect(result.duration).toBeGreaterThan(0);
      expect(result.directions).toHaveLength(points.length);
    });
  });

  describe('findTheBestRoute', () => {
    it('should return the best route for a given set of shops and delivery address', async () => {
      const shops: ShopEntity[] = [
        {
          id: 1,
          name: 'Shop 1',
          location: { lat: 37.7749, lng: -122.4194 } as Point,
        } as ShopEntity,
        {
          id: 2,
          name: 'Shop 2',
          location: { lat: 34.0522, lng: -118.2437 } as Point,
        } as ShopEntity,
        {
          id: 3,
          name: 'Shop 3',
          location: { lat: 32.7157, lng: -117.1611 } as Point,
        } as ShopEntity,
      ];
      const deliveryAddress: RiderAddressEntity = {
        location: { lat: 37.3382, lng: -121.8863 },
      } as RiderAddressEntity;

      const result = await googleServicesService.findTheBestRoute(
        shops,
        deliveryAddress,
      );

      expect(result).toHaveLength(shops.length);
      expect(result[0].id).toBe(3);
      expect(result[1].id).toBe(2);
      expect(result[2].id).toBe(1);
    });
  });

  describe('decode', () => {
    it('should decode an encoded string into an array of LatLngLiteral', () => {
      const encoded = 'q}~aH~v}uO?_@?_@?_@';

      const result = googleServicesService.decode(encoded);

      expect(result).toHaveLength(3);
      expect(result[0]).toEqual({ lat: 37.7749, lng: -122.4194 });
      expect(result[1]).toEqual({ lat: 34.0522, lng: -118.2437 });
      expect(result[2]).toEqual({ lat: 32.7157, lng: -117.1611 });
    });
  });
});
