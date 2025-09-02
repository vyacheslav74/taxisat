import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { ShopDocumentRetentionPolicyEntity } from './shop-document-retention-policy.entity';
import { ShopToShopDocumentEntity } from './shop-to-shop-document.entity';

@Entity('shop_document')
export class ShopDocumentEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: string;

  @Column()
  isEnabled!: boolean;

  @Column()
  isRequired!: boolean;

  @Column()
  hasExpiryDate!: boolean;

  @Column('int')
  notificationDaysBeforeExpiry!: number;

  @OneToMany(
    () => ShopDocumentRetentionPolicyEntity,
    (retentionPolicy) => retentionPolicy.shopDocument,
  )
  retentionPolicies?: ShopDocumentRetentionPolicyEntity[];

  @OneToMany(
    () => ShopToShopDocumentEntity,
    (shopToShopDocument) => shopToShopDocument.shopDocument,
  )
  shopToShopDocuments?: ShopToShopDocumentEntity[];
}
