import { Column } from 'typeorm';

export class RatingAggregate {
  @Column('tinyint', {
    nullable: true,
  })
  rating?: number;

  @Column('int', {
    default: 0,
  })
  reviewCount!: number;
}
