import { MigrationInterface, QueryRunner } from 'typeorm';

export class DriverPasswordLogin1695283964007 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `driver` ADD COLUMN `password` varchar(255) NULL DEFAULT NULL',
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('ALTER TABLE `driver` DROP COLUMN `password`');
    } catch (error) {}
  }
}
