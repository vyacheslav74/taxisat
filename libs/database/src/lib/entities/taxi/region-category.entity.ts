import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { RegionEntity } from './region.entity';

@Entity('region_category')
export class RegionCategoryEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column()
  currency!: string;

  @OneToMany(() => RegionEntity, (region) => region.category)
  regions!: RegionEntity[];
}
