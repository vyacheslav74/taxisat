import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { DriverDocumentRetentionPolicyEntity } from './driver-document-retention-policy.entity';
import { DriverToDriverDocumentEntity } from './driver-to-driver-document.entity';

@Entity('driver_document')
export class DriverDocumentEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: string;

  @Column({
    nullable: true,
  })
  description?: string;

  @Column()
  isEnabled!: boolean;

  @Column()
  isRequired!: boolean;

  @Column()
  hasExpiryDate!: boolean;

  @Column('int')
  notificationDaysBeforeExpiry!: number;

  @Column('int')
  numberOfImages!: number;

  @OneToMany(
    () => DriverDocumentRetentionPolicyEntity,
    (retentionPolicy) => retentionPolicy.driverDocument,
  )
  retentionPolicies?: DriverDocumentRetentionPolicyEntity[];

  @OneToMany(
    () => DriverToDriverDocumentEntity,
    (driverToDriverDocument) => driverToDriverDocument.driverDocument,
  )
  driverToDriverDocuments?: DriverToDriverDocumentEntity[];
}
