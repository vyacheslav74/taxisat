import {
  MigrationInterface,
  QueryRunner,
  TableColumn,
  TableForeignKey,
  TableIndex,
} from 'typeorm';

export class GiftCardSchemaUpdate1705735103420 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.renameTable('gift_card', 'gift_code');
    } catch (error) {}
    try {
      await queryRunner.addColumns('gift', [
        new TableColumn({
          name: 'name',
          type: 'varchar',
        }),
        new TableColumn({
          name: 'createdByOperatorId',
          type: 'int',
        }),
        new TableColumn({
          name: 'createdAt',
          type: 'datetime',
          default: 'NOW()',
        }),
      ]);
    } catch (error) {
      /* empty */
    }
    try {
      await queryRunner.createForeignKey(
        'gift',
        new TableForeignKey({
          columnNames: ['createdByOperatorId'],
          referencedColumnNames: ['id'],
          referencedTableName: 'operator',
          onDelete: 'SET NULL',
        }),
      );
      await queryRunner.createIndex(
        'gift',
        new TableIndex({
          columnNames: ['createdByOperatorId'],
        }),
      );
    } catch (error) {}
    try {
      await queryRunner.dropColumns('gift_code', [
        'amount',
        'currency',
        'availableTimestamp',
        'expirationTimestamp',
        'isUsed',
      ]);
      await queryRunner.addColumns('gift_code', [
        new TableColumn({
          name: 'usedAt',
          type: 'datetime',
          isNullable: true,
        }),
        new TableColumn({
          name: 'giftId',
          type: 'int',
        }),
      ]);
      await queryRunner.createForeignKey(
        'gift_code',
        new TableForeignKey({
          columnNames: ['giftId'],
          referencedColumnNames: ['id'],
          referencedTableName: 'gift',
          onDelete: 'CASCADE',
        }),
      );
      await queryRunner.createIndex(
        'gift_code',
        new TableIndex({
          columnNames: ['giftId'],
        }),
      );
    } catch (error) {
      /* empty */
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {}
}
