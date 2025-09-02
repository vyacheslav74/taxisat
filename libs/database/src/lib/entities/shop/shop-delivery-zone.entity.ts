import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { PolygonTransformer } from '../../transformers/polygon.transformer';
import { Point } from '../../interfaces/point';
import { ShopEntity } from './shop.entity';

@Entity('shop_delivery_zone')
export class ShopDeliveryZoneEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(() => ShopEntity, (shop) => shop.deliveryZones)
  shop!: ShopEntity;

  @Column()
  shopId!: number;

  @Column()
  name!: string;

  @Column('float', {
    nullable: false,
    default: 0,
    precision: 10,
    scale: 2,
  })
  deliveryFee!: number;

  @Column('tinyint', { nullable: false, default: 1 })
  minimumOrderAmount!: number;

  @Column('tinyint', { nullable: false })
  minDeliveryTimeMinutes!: number;

  @Column('tinyint', { nullable: false })
  maxDeliveryTimeMinutes!: number;

  @Column('tinyint', { nullable: false, default: 1 })
  enabled!: boolean;

  @Column('polygon', {
    transformer: new PolygonTransformer(),
  })
  location!: Point[][];
}
