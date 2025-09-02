import { MigrationInterface, QueryRunner } from 'typeorm';

export class CancelReasonNote1701593756014 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `request` ADD COLUMN `cancelReasonNote` TEXT NULL;',
      );
    } catch (e) {
      console.log(e);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `request` DROP COLUMN `cancelReasonNote`;',
      );
    } catch (e) {
      console.log(e);
    }
  }
}
