import { MigrationInterface, QueryRunner } from 'typeorm';

export class RideOptionDescription1701195017930 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `service_option` ADD COLUMN `description` varchar(255) NULL;',
      );
    } catch (e) {
      console.log(e);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `service_option` DROP COLUMN `description`;',
      );
    } catch (e) {
      console.log(e);
    }
  }
}
