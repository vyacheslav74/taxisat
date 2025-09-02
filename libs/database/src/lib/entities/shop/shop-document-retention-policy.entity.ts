import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopDocumentEntity } from './shop-document.entity';

@Entity('shop_document_retention_policy')
export class ShopDocumentRetentionPolicyEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: number;

  @Column('int', {
    default: 0,
  })
  deleteAfterDays!: number;

  @ManyToOne(
    () => ShopDocumentEntity,
    (shopDocument) => shopDocument.retentionPolicies,
  )
  shopDocument!: ShopDocumentEntity;

  @Column()
  shopDocumentId!: number;
}
