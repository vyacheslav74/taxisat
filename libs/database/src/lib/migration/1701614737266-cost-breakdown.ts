import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class CostBreakdown1701614737266 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.addColumn(
        'request',
        new TableColumn({
          name: 'waitCost',
          type: 'float',
          precision: 10,
          scale: 2,
          default: 0,
        }),
      );
      await queryRunner.addColumn(
        'request',
        new TableColumn({
          name: 'rideOptionsCost',
          type: 'float',
          precision: 10,
          scale: 2,
          default: 0,
        }),
      );
      await queryRunner.addColumn(
        'request',
        new TableColumn({
          name: 'taxCost',
          type: 'float',
          precision: 10,
          scale: 2,
          default: 0,
        }),
      );
      await queryRunner.addColumn(
        'request',
        new TableColumn({
          name: 'serviceCost',
          type: 'float',
          precision: 10,
          scale: 2,
          default: 0,
        }),
      );
    } catch (e) {
      console.log(e);
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropColumn('request', 'waitCost');
      await queryRunner.dropColumn('request', 'rideOptionsCost');
      await queryRunner.dropColumn('request', 'taxCost');
      await queryRunner.dropColumn('request', 'serviceCost');
    } catch (e) {
      console.log(e);
    }
  }
}
