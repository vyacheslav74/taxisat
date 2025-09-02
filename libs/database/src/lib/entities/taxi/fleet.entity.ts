import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';
import { Point } from '../../interfaces/point';
import { PolygonTransformer } from '../../transformers/polygon.transformer';
import { DriverEntity } from './driver.entity';
import { FleetTransactionEntity } from './fleet-transaction.entity';
import { FleetWalletEntity } from './fleet-wallet.entity';
import { OperatorEntity } from '../operator.entity';
import { TaxiOrderEntity } from './taxi-order.entity';
import { ZonePriceEntity } from './zone-price.entity';
import { MediaEntity } from '../media.entity';
import { FleetStaffEntity } from './fleet-staff.entity';

@Entity('fleet')
export class FleetEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column('bigint')
  phoneNumber!: string;

  @CreateDateColumn({ nullable: true })
  createdAt?: Date;

  @UpdateDateColumn({ nullable: true })
  updatedAt?: Date;

  @DeleteDateColumn({ nullable: true })
  deletedAt?: Date;

  @Column()
  accountNumber!: string;

  @Column('bigint')
  mobileNumber!: string;

  @Column({ default: false })
  isBlocked!: boolean;

  @Column('tinyint', { default: 0 })
  commissionSharePercent!: number;

  @Column('float', { default: 0 })
  commissionShareFlat!: number;

  @Column('varchar', { nullable: true })
  address?: string;

  @Column({
    nullable: true,
  })
  userName?: string;

  @Column({
    nullable: true,
  })
  password?: string;

  @OneToOne(() => MediaEntity, { nullable: true })
  @JoinColumn()
  profilePicture?: MediaEntity;

  @Column({ nullable: true })
  profilePictureId?: number;

  @Column('float', {
    precision: 10,
    scale: 2,
    nullable: true,
  })
  feeMultiplier?: number;

  @Column('polygon', {
    transformer: new PolygonTransformer(),
    nullable: true,
  })
  exclusivityAreas?: Point[][];

  @OneToMany(() => DriverEntity, (driver) => driver.fleet)
  drivers!: DriverEntity[];

  @OneToMany(() => FleetWalletEntity, (wallet) => wallet.fleet)
  wallet!: FleetWalletEntity[];

  @OneToMany(
    () => FleetTransactionEntity,
    (fleetTransaction) => fleetTransaction.fleet,
    { onDelete: 'CASCADE', onUpdate: 'RESTRICT' },
  )
  transactions!: FleetTransactionEntity[];

  @OneToMany(() => OperatorEntity, (operator) => operator.fleet)
  operators!: OperatorEntity[];

  @ManyToMany(() => ZonePriceEntity, (zonePrice) => zonePrice.fleets)
  zonePrices!: ZonePriceEntity;

  @OneToMany(() => FleetStaffEntity, (fleetStaff) => fleetStaff.fleet)
  staffs!: FleetStaffEntity[];

  @OneToMany(() => TaxiOrderEntity, (request) => request.fleet)
  requests!: TaxiOrderEntity[];
}
