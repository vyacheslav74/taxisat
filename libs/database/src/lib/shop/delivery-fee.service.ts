import { Injectable } from '@nestjs/common';
import { DeliveryPackageSize } from '../entities/enums/package-size.enum';
import { OrderQueueLevel } from '../entities/shop/enums/order-queue-level.enum';
import { ShopEntity } from '@ridy/database/shop/shop.entity';
import { In, Repository } from 'typeorm';
import { RiderAddressEntity } from '@ridy/database/rider-address.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { ServiceEntity } from '@ridy/database/taxi/service.entity';
import { GoogleServicesService } from '@ridy/order/google-services/google-services.service';
import { ServiceService } from '@ridy/order/service.service';
import { ProductEntity } from '@ridy/database/shop/product.entity';

@Injectable()
export class DeliveryFeeService {
  constructor(
    @InjectRepository(ShopEntity)
    private readonly shopRepository: Repository<ShopEntity>,
    @InjectRepository(RiderAddressEntity)
    private readonly riderAddressRepository: Repository<RiderAddressEntity>,
    @InjectRepository(ServiceEntity)
    private readonly serviceRepository: Repository<ServiceEntity>,
    private googleService: GoogleServicesService,
    private serviceService: ServiceService,
    @InjectRepository(ProductEntity)
    private productEntity: Repository<ProductEntity>,
  ) {}

  async calculateDeliveryFee(input: {
    shopIds: number[];
    deliveryAddressId: number;
    totalItems: number;
    produtIds: number[];
  }): Promise<{
    batchDeliveryFee: number;
    splitDeliveryFee: number;
    batchDeliveryDuration: number;
  }> {
    const shops = await this.shopRepository.find({
      where: { id: In(input.shopIds) },
    });
    const address = await this.riderAddressRepository.findOneByOrFail({
      id: input.deliveryAddressId,
    });
    // Find the best route to visit all the shops and end at the delivery address
    const bestShopOrderByDistance = await this.googleService.findTheBestRoute(
      shops,
      address,
    );
    const totalDistance = bestShopOrderByDistance.legs.reduce(
      (acc, leg) => acc + leg.distance.value,
      0,
    );
    const totalDuration = bestShopOrderByDistance.legs.reduce(
      (acc, leg) => acc + leg.duration.value,
      0,
    );
    // determine the delivery mode based on the number of items
    let deliveryMode = [DeliveryPackageSize.Small, DeliveryPackageSize.Medium];
    if (input.totalItems > 5) {
      deliveryMode = [DeliveryPackageSize.Medium, DeliveryPackageSize.Large];
    } else if (input.totalItems > 10) {
      deliveryMode = [DeliveryPackageSize.Large];
    }
    // find the services that are available for the delivery mode
    const services = await this.serviceRepository.find({
      where: { maximumCarryPackageSize: In(deliveryMode) },
    });
    const costs = services.map((service) => {
      return this.serviceService.calculateCost(
        service,
        totalDistance,
        totalDuration,
        new Date(),
      );
    });
    const minCostBatch = Math.min(...costs);
    const maxCostBatch = Math.max(...costs);

    // START: Calculate the preparation time
    let maxPreparationTime = 0;
    let splitDeliveryMinFee = 0;
    let splitDeliveryMaxFee = 0;
    for (const shopId of input.shopIds) {
      const shop = await this.shopRepository.findOneByOrFail({ id: shopId });

      const metrics = await this.googleService.getSumDistanceAndDuration([
        address.location,
        shop.location,
      ]);
      const distance = metrics.distance;
      const duration = metrics.duration;
      const costs = services.map((service) => {
        return this.serviceService.calculateCost(
          service,
          distance,
          duration,
          new Date(),
        );
      });
      splitDeliveryMinFee += Math.min(...costs);
      splitDeliveryMaxFee += Math.max(...costs);

      const queueLevel = shop.orderQueueLevel;
      // Convert the queue level from low, medium, high to 0, 0.5, 1
      let queueLevelValue = 0;
      if (queueLevel === OrderQueueLevel.MEDIUM) {
        queueLevelValue = 0.5;
      } else if (queueLevel === OrderQueueLevel.HIGH) {
        queueLevelValue = 1;
      }
      let preparationTime = 0;
      for (const productId of input.produtIds) {
        const product = await this.productEntity.findOneByOrFail({
          id: productId,
        });
        const itemPreparationTime =
          product.minimumPreparationTime +
          (product.maximumPreparationTime - product.minimumPreparationTime) *
            queueLevelValue;
        preparationTime = Math.max(preparationTime, itemPreparationTime);
      }
      maxPreparationTime = Math.max(maxPreparationTime, preparationTime);
    }
    // return averages of the costs
    return {
      batchDeliveryFee: (minCostBatch + maxCostBatch) / 2,
      splitDeliveryFee: (splitDeliveryMinFee + splitDeliveryMaxFee) / 2,
      batchDeliveryDuration: maxPreparationTime + totalDuration,
    };
  }
}
