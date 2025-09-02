import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class PayoutMethodCurrency1703408101869 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.addColumn(
        'payout_method',
        new TableColumn({
          name: 'currency',
          type: 'varchar',
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropColumn('payout_method', 'currency');
    } catch (error) {}
  }
}
