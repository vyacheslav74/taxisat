import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopDocumentEntity } from './shop-document.entity';
import { ShopEntity } from './shop.entity';
import { MediaEntity } from '../media.entity';
import { ShopDocumentRetentionPolicyEntity } from './shop-document-retention-policy.entity';

@Entity('shop_to_shop_document')
export class ShopToShopDocumentEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(
    () => ShopDocumentEntity,
    (shopDocument) => shopDocument.shopToShopDocuments,
    { onDelete: 'CASCADE' },
  )
  shopDocument?: ShopDocumentEntity;

  @Column()
  shopDocumentId!: number;

  @ManyToOne(() => ShopEntity, (shop) => shop.shopToShopDocuments, {
    onDelete: 'CASCADE',
  })
  shop?: ShopEntity;

  @Column()
  shopId!: number;

  @ManyToOne(() => MediaEntity, { onDelete: 'CASCADE' })
  media?: MediaEntity;

  @Column()
  mediaId!: number;

  @ManyToOne(() => ShopDocumentRetentionPolicyEntity, { onDelete: 'CASCADE' })
  retentionPolicy?: ShopDocumentRetentionPolicyEntity;

  @Column({
    nullable: true,
  })
  retentionPolicyId?: number;

  @Column({
    nullable: true,
  })
  expiresAt?: Date;
}
