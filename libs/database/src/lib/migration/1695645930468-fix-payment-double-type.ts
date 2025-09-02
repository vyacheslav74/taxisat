import { MigrationInterface, QueryRunner } from 'typeorm';

export class FixPaymentDoubleType1695645930468 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        "ALTER TABLE `payment` CHANGE COLUMN `amount` `amount` float(10,2) NOT NULL DEFAULT '0.00'",
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {}
}
