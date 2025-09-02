import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { ZonePriceEntity } from './zone-price.entity';

@Entity('zone_price_category')
export class ZonePriceCategoryEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @OneToMany(() => ZonePriceEntity, (zonePrice) => zonePrice.zonePriceCategory)
  zonePrices!: ZonePriceEntity[];
}
