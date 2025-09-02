import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class DriverDirections1702211821170 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.addColumn(
        'request',
        new TableColumn({
          name: 'driverDirections',
          type: 'multipoint',
          isNullable: true,
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropColumn('request', 'driverDirections');
    } catch (error) {}
  }
}
