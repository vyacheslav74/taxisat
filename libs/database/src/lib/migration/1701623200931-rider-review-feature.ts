import { MigrationInterface, QueryRunner, Table, TableColumn } from 'typeorm';

export class RiderReviewFeature1701623200931 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'rider_review',
          columns: [
            new TableColumn({
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            }),
            new TableColumn({
              name: 'score',
              type: 'tinyint',
            }),
            new TableColumn({
              name: 'review',
              type: 'varchar',
              isNullable: true,
            }),
            new TableColumn({
              name: 'riderId',
              type: 'int',
            }),
            new TableColumn({
              name: 'driverId',
              type: 'int',
            }),
            new TableColumn({
              name: 'orderId',
              type: 'int',
            }),
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
            {
              columnNames: ['orderId'],
              referencedTableName: 'request',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              columnNames: ['riderId'],
            },
            {
              columnNames: ['driverId'],
            },
            {
              columnNames: ['orderId'],
            },
          ],
        }),
        true,
        true,
        true,
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropTable('rider_review');
    } catch (error) {}
  }
}
