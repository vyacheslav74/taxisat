import { MigrationInterface, QueryRunner } from 'typeorm';

export class StoreCountryCode1701195564666 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `driver` ADD COLUMN `countryIso` varchar(5) NULL;',
      );
    } catch (e) {
      console.log(e);
    }
    try {
      await queryRunner.query(
        'ALTER TABLE `rider` ADD COLUMN `countryIso` varchar(5) NULL;',
      );
    } catch (e) {
      console.log(e);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('ALTER TABLE `driver` DROP COLUMN `countryIso`;');
    } catch (e) {
      console.log(e);
    }
    try {
      await queryRunner.query('ALTER TABLE `rider` DROP COLUMN `countryIso`;');
    } catch (e) {
      console.log(e);
    }
  }
}
