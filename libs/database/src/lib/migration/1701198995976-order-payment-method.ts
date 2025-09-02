import { MigrationInterface, QueryRunner } from 'typeorm';

export class OrderPaymentMethod1701198995976 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `request` ADD `paymentMode` enum ("cash", "savedPaymentMethod", "paymentGateway", "wallet") NULL;',
      );
      await queryRunner.query(
        'ALTER TABLE `request` ADD `savedPaymentMethodId` int NULL;',
      );
      await queryRunner.query(
        'ALTER TABLE `request` ADD CONSTRAINT FOREIGN KEY (`savedPaymentMethodId`) REFERENCES `saved_payment_method`(`id`) ON DELETE SET NULL ON UPDATE NO ACTION;',
      );
    } catch (error) {
      console.log(error);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `request` DROP COLUMN `paymentMode`;',
      );
      await queryRunner.query(
        'ALTER TABLE `request` DROP FOREIGN KEY `FK_5f9f6e2c5b4d6f6f3e7d7a7e9e4`;',
      );
      await queryRunner.query(
        'ALTER TABLE `request` DROP COLUMN `savedPaymentMethodId`;',
      );
    } catch (error) {
      console.log(error);
    }
  }
}
