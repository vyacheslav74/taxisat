import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { DriverDocumentEntity } from './driver-document.entity';

@Entity('driver_document_retention_policy')
export class DriverDocumentRetentionPolicyEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: number;

  @Column('int', {
    default: 0,
  })
  deleteAfterDays!: number;

  @ManyToOne(
    () => DriverDocumentEntity,
    (driverDocument) => driverDocument.retentionPolicies,
  )
  driverDocument!: DriverDocumentEntity;

  @Column()
  driverDocumentId!: number;
}
