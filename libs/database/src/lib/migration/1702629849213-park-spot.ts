import { ParkSpotCarSize } from '../entities/parking/enums/park-spot-car-size.enum';
import { ParkSpotFacility } from '../entities/parking/enums/park-spot-facility.enum';
import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class ParkingApp1702629849213 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'park_spot',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
            },
            {
              name: 'name',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'address',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'rating',
              type: 'tinyint',
              isNullable: true,
            },
            {
              name: 'reviewCount',
              type: 'smallint',
              default: 0,
            },
            {
              name: 'openHour',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'closeHour',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'acceptNewRequest',
              type: 'boolean',
              default: true,
            },
            {
              name: 'acceptExtendRequest',
              type: 'boolean',
              default: true,
            },
            {
              name: 'carSize',
              isNullable: true,
              enumName: 'ParkSpotCarSize',
              type: 'enum',
              enum: Object.values(ParkSpotCarSize),
            },
            {
              name: 'carPrice',
              type: 'float',
              isNullable: true,
              default: 0,
              precision: 12,
              scale: 2,
            },
            {
              name: 'carSpaces',
              type: 'int',
              default: 0,
            },
            {
              name: 'bikePrice',
              type: 'float',
              isNullable: true,
              default: 0,
              precision: 12,
              scale: 2,
            },
            {
              name: 'bikeSpaces',
              type: 'int',
              default: 0,
            },
            {
              name: 'truckPrice',
              type: 'float',
              isNullable: true,
              default: 0,
              precision: 12,
              scale: 2,
            },
            {
              name: 'truckSpaces',
              type: 'int',
              default: 0,
            },
            {
              name: 'currency',
              type: 'varchar',
              default: 'USD',
            },
            {
              name: 'description',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'operatorName',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'operatorPhoneCountryCode',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'operatorPhoneNumber',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'facilities',
              type: 'set',
              enumName: 'ParkSpotFacility',
              enum: Object.values(ParkSpotFacility),
            },
            {
              name: 'createdAt',
              type: 'datetime',
            },
            {
              name: 'updatedAt',
              type: 'datetime',
              isNullable: true,
            },
            {
              name: 'deletedAt',
              type: 'datetime',
              isNullable: true,
            },
          ],
        }),
        true,
        true,
        true,
      );
    } catch (error) {
      /* empty */
    }
  }

  public async down(): Promise<void> {}
}
