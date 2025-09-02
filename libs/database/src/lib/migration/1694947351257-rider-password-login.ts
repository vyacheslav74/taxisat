import { MigrationInterface, QueryRunner } from 'typeorm';

export class RiderPasswordLogin1694947351257 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `rider` ADD COLUMN `password` VARCHAR(255) NULL DEFAULT NULL',
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('ALTER TABLE `rider` DROP COLUMN `password`');
    } catch (error) {}
  }
}
