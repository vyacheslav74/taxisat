import {
  Client,
  LatLngLiteral,
  RouteLeg,
} from '@googlemaps/google-maps-services-js';
import { Injectable, Logger } from '@nestjs/common';
import { ForbiddenError } from '@nestjs/apollo';
import { Point } from '../../interfaces/point';
import { SharedConfigurationService } from '../../shared-configuration.service';
import { ShopEntity } from '../../entities/shop/shop.entity';
import { RiderAddressEntity } from '../../entities/rider-address.entity';

@Injectable()
export class GoogleServicesService {
  client = new Client({});
  constructor(private configurationService: SharedConfigurationService) {}

  async getSumDistanceAndDuration(points: Point[]): Promise<{
    distance: number;
    duration: number;
    directions: LatLngLiteral[];
  }> {
    let distance = 0;
    let duration = 0;
    const config = await this.configurationService.getConfiguration();
    for (let i = 0; i < points.length - 1; i++) {
      const matrixResponse = await this.client.distancematrix({
        params: {
          origins: [points[i]],
          destinations: [points[i + 1]],
          key: config!.backendMapsAPIKey!,
        },
      });
      if (matrixResponse.statusText !== 'OK') {
        throw new ForbiddenError('NO_ROUTE_FOUND');
      }

      distance += matrixResponse.data.rows[0].elements
        .filter((element) => element.status == 'OK')
        .reduce((a, b) => {
          return a + b.distance.value;
        }, 0);
      duration += matrixResponse.data.rows[0].elements
        .filter((element) => element.status == 'OK')
        .reduce((a, b) => {
          return a + b.duration.value;
        }, 0);
    }
    let directions: LatLngLiteral[] = [];
    if (process.env.SHOW_DIRECTIONS != null) {
      try {
        const directionsAPI = await this.client.directions({
          params: {
            key: config!.backendMapsAPIKey!,
            origin: points[0],
            destination: points[points.length - 1],
            waypoints:
              points.length > 2 ? points.slice(1, points.length - 1) : [],
          },
        });
        Logger.log(directionsAPI.data, 'Directions');
        if (directionsAPI.data.routes.length > 0) {
          directions =
            this.decode(
              directionsAPI.data.routes[0].overview_polyline.points,
            ) ?? [];
        }
      } catch (exception) {
        Logger.error(exception);
      }
    }
    return { distance, duration, directions };
  }

  async findTheBestRoute(
    shops: ShopEntity[],
    deliveryAddress: RiderAddressEntity,
  ): Promise<{ shops: ShopEntity[]; legs: RouteLeg[] }> {
    const config = await this.configurationService.getConfiguration();
    console.log(config?.backendMapsAPIKey);
    // find the farthest shop from the delivery address based on the distance
    // between the delivery address and the shop
    const farthestShop = shops.reduce((a, b) => {
      return this.distancePoints(a.location, deliveryAddress.location) >
        this.distancePoints(b.location, deliveryAddress.location)
        ? a
        : b;
    });
    const route = await this.client.directions({
      params: {
        key: config!.backendMapsAPIKey!,
        origin: farthestShop.location,
        destination: deliveryAddress.location,
        waypoints: shops
          .filter((shop) => shop.id !== farthestShop.id)
          .map((shop) => shop.location),
        optimize: true,
      },
    });
    console.log(JSON.stringify(route.data));
    Logger.log(route.data, 'Route');
    if (route.data.status !== 'OK') {
      throw new ForbiddenError('NO_ROUTE_FOUND');
    }
    return {
      shops: [
        farthestShop,
        ...route.data.routes[0].waypoint_order.map(
          (index) => shops.filter((shop) => shop.id !== farthestShop.id)[index],
        ),
      ],
      legs: route.data.routes[0].legs,
    };
  }

  distancePoints(point1: Point, point2: Point): number {
    return Math.sqrt(
      Math.pow(point1.lat - point2.lat, 2) +
        Math.pow(point1.lng - point2.lng, 2),
    );
  }

  decode(encoded: string): LatLngLiteral[] {
    // array that holds the points

    const points = [];
    let index = 0;
    const len = encoded.length;
    let lat = 0,
      lng = 0;
    while (index < len) {
      let b,
        shift = 0,
        result = 0;
      do {
        b = encoded.charAt(index++).charCodeAt(0) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);

      const dlat = (result & 1) != 0 ? ~(result >> 1) : result >> 1;
      lat += dlat;
      shift = 0;
      result = 0;
      do {
        b = encoded.charAt(index++).charCodeAt(0) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      const dlng = (result & 1) != 0 ? ~(result >> 1) : result >> 1;
      lng += dlng;

      points.push({ lat: lat / 1e5, lng: lng / 1e5 });
    }
    return points;
  }
}
