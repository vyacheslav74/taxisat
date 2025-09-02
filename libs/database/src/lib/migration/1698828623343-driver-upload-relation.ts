import { MigrationInterface, QueryRunner } from 'typeorm';

export class DriverUploadRelation1698828623343 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `media` ADD `uploadedByDriverId` int NULL;',
      );
      await queryRunner.query(
        'ALTER TABLE `media` ADD FOREIGN KEY (`uploadedByDriverId`) REFERENCES `driver`(`id`) ON DELETE SET NULL ON UPDATE NO ACTION;',
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query(
        'ALTER TABLE `media` DROP FOREIGN KEY `FK_5c4b6f0b4e0d9b8c7d5e6a1d9a9`;',
      );
      await queryRunner.query(
        'ALTER TABLE `media` DROP COLUMN `uploadedByDriverId`;',
      );
    } catch (error) {}
  }
}
