import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { DriverDocumentEntity } from './driver-document.entity';
import { DriverEntity } from './driver.entity';
import { MediaEntity } from '../media.entity';
import { DriverDocumentRetentionPolicyEntity } from './driver-document-retention-policy.entity';

@Entity('driver_to_driver_document')
export class DriverToDriverDocumentEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @ManyToOne(
    () => DriverDocumentEntity,
    (driverDocument) => driverDocument.driverToDriverDocuments,
    { onDelete: 'CASCADE' },
  )
  driverDocument?: DriverDocumentEntity;

  @Column()
  driverDocumentId!: number;

  @ManyToOne(() => DriverEntity, (driver) => driver.driverToDriverDocuments, {
    onDelete: 'CASCADE',
  })
  driver?: DriverEntity;

  @Column()
  driverId!: number;

  @ManyToOne(() => MediaEntity, { onDelete: 'CASCADE' })
  media?: MediaEntity;

  @Column()
  mediaId!: number;

  @ManyToOne(() => DriverDocumentRetentionPolicyEntity, { onDelete: 'CASCADE' })
  retentionPolicy?: DriverDocumentRetentionPolicyEntity;

  @Column({
    nullable: true,
  })
  retentionPolicyId?: number;

  @Column({
    nullable: true,
  })
  expiresAt?: Date;
}
