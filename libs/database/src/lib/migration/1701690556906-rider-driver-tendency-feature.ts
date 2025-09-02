import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class RiderDriverTendencyFeature1701690556906
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'rider_favorite_drivers_driver',
          columns: [
            {
              name: 'riderId',
              type: 'int',
              isPrimary: true,
            },
            {
              name: 'driverId',
              type: 'int',
              isPrimary: true,
            },
          ],
          foreignKeys: [
            {
              columnNames: ['riderId'],
              referencedTableName: 'rider',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              columnNames: ['driverId'],
              referencedTableName: 'driver',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              columnNames: ['riderId', 'driverId'],
              isUnique: true,
            },
          ],
        }),
        true,
        true,
        true,
      );
      await queryRunner.createTable(
        new Table({
          name: 'rider_blocked_drivers_driver',
          columns: [
            {
              name: 'riderId',
              type: 'int',
              isPrimary: true,
            },
            {
              name: 'driverId',
              type: 'int',
              isPrimary: true,
            },
          ],
          foreignKeys: [
            {
              columnNames: ['riderId'],
              referencedTableName: 'rider',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              columnNames: ['driverId'],
              referencedTableName: 'driver',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              columnNames: ['riderId', 'driverId'],
              isUnique: true,
            },
          ],
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropTable('rider_favorite_drivers_driver');
      await queryRunner.dropTable('rider_blocked_drivers_driver');
    } catch (error) {}
  }
}
