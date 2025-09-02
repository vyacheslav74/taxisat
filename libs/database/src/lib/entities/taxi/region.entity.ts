import {
  Column,
  Entity,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';

import { Point } from '../../interfaces/point';
import { PolygonTransformer } from '../../transformers/polygon.transformer';
import { ServiceEntity } from './service.entity';
import { RegionCategoryEntity } from './region-category.entity';
import { TaxiOrderEntity } from './taxi-order.entity';

@Entity('region')
export class RegionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column('char', { length: 3 })
  currency!: string;

  @Column({
    default: true,
  })
  enabled!: boolean;

  @Column('polygon', {
    transformer: new PolygonTransformer(),
  })
  location!: Point[][];

  @ManyToMany(() => ServiceEntity, (service) => service.regions)
  services!: ServiceEntity[];

  @ManyToOne(() => RegionCategoryEntity, (category) => category.regions)
  category!: RegionCategoryEntity;

  @Column({ nullable: true })
  categoryId?: number;

  @OneToMany(() => TaxiOrderEntity, (taxiOrder) => taxiOrder.region)
  taxiOrders!: TaxiOrderEntity;
}
