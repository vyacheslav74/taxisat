import { PayoutMethodType } from '../entities/enums/payout-method-type.enum';
import { SavedPaymentMethodType } from '../entities/enums/saved-payment-method-type';

import {
  MigrationInterface,
  QueryRunner,
  TableColumn,
  TableForeignKey,
} from 'typeorm';
import { Table } from 'typeorm/schema-builder/table/Table';

export class PayoutMethodEntityMigration1627567460081
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.query('DELETE FROM `payout_account` WHERE id > 0');
      await queryRunner.createTable(
        new Table({
          name: 'payout_method',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            },
            {
              name: 'enabled',
              type: 'boolean',
              default: true,
            },
            {
              name: 'name',
              type: 'varchar',
            },
            {
              name: 'description',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'type',
              type: 'enum',
              enum: Object.values(PayoutMethodType),
            },
            {
              name: 'publicKey',
              type: 'text',
              isNullable: true,
            },
            {
              name: 'privateKey',
              type: 'text',
              isNullable: true,
            },
            {
              name: 'saltKey',
              type: 'text',
              isNullable: true,
            },
            {
              name: 'merchantId',
              type: 'text',
              isNullable: true,
            },
            {
              name: 'deletedAt',
              type: 'timestamp',
              isNullable: true,
            },
            {
              name: 'mediaId',
              type: 'int',
              isNullable: true,
            },
          ],
          foreignKeys: [
            {
              name: 'fk_payout_method_media',
              columnNames: ['mediaId'],
              referencedTableName: 'media',
              referencedColumnNames: ['id'],
              onDelete: 'SET NULL',
              onUpdate: 'NO ACTION',
            },
          ],
        }),
        true,
      );
    } catch (error) {}
    try {
      await queryRunner.addColumn(
        'payout_account',
        new TableColumn({
          name: 'payoutMethodId',
          type: 'int',
          isNullable: true,
        }),
      );
      await queryRunner.createForeignKey(
        'payout_account',
        new TableForeignKey({
          name: 'fk_payout_account_payout_method',
          columnNames: ['payoutMethodId'],
          referencedTableName: 'payout_method',
          referencedColumnNames: ['id'],
          onDelete: 'SET NULL',
          onUpdate: 'NO ACTION',
        }),
      );
      await queryRunner.addColumn(
        'payout_account',
        new TableColumn({
          name: 'type',
          type: 'enum',
          enum: Object.values(SavedPaymentMethodType),
        }),
      );
      await queryRunner.addColumn(
        'payout_account',
        new TableColumn({
          name: 'last4',
          type: 'varchar',
        }),
      );
      await queryRunner.addColumn(
        'payout_account',
        new TableColumn({
          name: 'currency',
          type: 'varchar',
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropTable('payout_method');
      await queryRunner.dropForeignKey(
        'payout_account',
        'fk_payout_account_payout_method',
      );
      await queryRunner.dropColumn('payout_account', 'payoutMethodId');
      await queryRunner.dropColumn('payout_account', 'type');
      await queryRunner.dropColumn('payout_account', 'last4');
      await queryRunner.dropColumn('payout_account', 'currency');
    } catch (error) {}
  }
}
