import { MigrationInterface, QueryRunner } from 'typeorm';

export class SavedPaymentMethodFields1701195286460
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `saved_payment_method` ADD COLUMN `lastFour` varchar(255) NULL;',
      );
      await queryRunner.query(
        'ALTER TABLE `saved_payment_method` ADD COLUMN `isEnabled` boolean DEFAULT true;',
      );
      await queryRunner.query(
        'ALTER TABLE `saved_payment_method` ADD COLUMN `isDefault` boolean DEFAULT false;',
      );
    } catch (e) {
      console.log(e);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `saved_payment_method` DROP COLUMN `lastFour`;',
      );
      await queryRunner.query(
        'ALTER TABLE `saved_payment_method` DROP COLUMN `isEnabled`;',
      );
      await queryRunner.query(
        'ALTER TABLE `saved_payment_method` DROP COLUMN `isDefault`;',
      );
    } catch (e) {
      console.log(e);
    }
  }
}
