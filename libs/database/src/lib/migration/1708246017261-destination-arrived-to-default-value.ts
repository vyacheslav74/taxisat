import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class DestinationArrivedToDefaultValue1708246017261
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.changeColumn(
        'request',
        'destinationArrivedTo',
        new TableColumn({
          name: 'destinationArrivedTo',
          type: 'tinyint',
          default: -1,
        }),
      );
    } catch (error) {
      /* empty */
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.changeColumn(
        'request',
        'destinationArrivedTo',
        new TableColumn({
          name: 'destinationArrivedTo',
          type: 'tinyint',
          default: 0,
        }),
      );
    } catch (error) {
      /* empty */
    }
  }
}
