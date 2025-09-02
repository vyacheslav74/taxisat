import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { OperatorPermission } from './enums/operator-permission.enum';
import { OperatorEntity } from './operator.entity';
import { AppType } from './enums/app-type.enum';
import { ShopPermission } from './enums/shop-permission.enum';
import { ParkingPermission } from './enums/parking-permission.enum';
import { TaxiPermission } from './enums/taxi-permissions.enum';

@Entity('operator_role')
export class OperatorRoleEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  title!: string;

  @Column('set', {
    enum: OperatorPermission,
  })
  permissions!: OperatorPermission[];

  @Column('set', {
    enum: TaxiPermission,
  })
  taxiPermissions!: TaxiPermission[];

  @Column('set', {
    enum: ShopPermission,
  })
  shopPermissions!: ShopPermission[];

  @Column('set', {
    enum: ParkingPermission,
  })
  parkingPermissions!: ParkingPermission[];

  @Column('set', {
    enum: AppType,
  })
  allowedApps!: AppType[];

  @OneToMany(() => OperatorEntity, (operator) => operator.role)
  operators!: OperatorEntity[];
}
