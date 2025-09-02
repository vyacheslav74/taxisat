import { PayoutSessionStatus } from '../entities/enums/payout-session-status.enum';

import {
  MigrationInterface,
  QueryRunner,
  Table,
  TableColumn,
  TableForeignKey,
  TableIndex,
} from 'typeorm';

export class PayoutSession1703444461480 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'payout_session',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            },
            {
              name: 'createdAt',
              type: 'datetime',
              default: 'NOW()',
            },
            {
              name: 'processedAt',
              type: 'datetime',
              isNullable: true,
            },
            {
              name: 'description',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'status',
              type: 'enum',
              enum: Object.values(PayoutSessionStatus),
              default: "'pending'",
            },
            {
              name: 'totalAmount',
              type: 'float',
              default: 0,
              precision: 10,
              scale: 2,
            },
            {
              name: 'currency',
              type: 'varchar',
            },
            {
              name: 'createdByOperatorId',
              type: 'int',
            },
          ],
          foreignKeys: [
            {
              columnNames: ['createdByOperatorId'],
              referencedTableName: 'operator',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              columnNames: ['createdByOperatorId'],
            },
          ],
        }),
        true,
        true,
        true,
      );
    } catch (error) {
      /* empty */
    }
    try {
      await queryRunner.createTable(
        new Table({
          name: 'payout_session_payout_methods_payout_method',
          columns: [
            {
              name: 'payoutSessionId',
              type: 'int',
            },
            {
              name: 'payoutMethodId',
              type: 'int',
            },
          ],
          foreignKeys: [
            {
              columnNames: ['payoutSessionId'],
              referencedTableName: 'payout_session',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              columnNames: ['payoutMethodId'],
              referencedTableName: 'payout_method',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              columnNames: ['payoutSessionId'],
            },
            {
              columnNames: ['payoutMethodId'],
            },
          ],
        }),
      );
    } catch (error) {
      /* empty */
    }
    try {
      await queryRunner.addColumn(
        'driver_transaction',
        new TableColumn({
          name: 'payoutSessionId',
          type: 'int',
          isNullable: true,
        }),
      );
      await queryRunner.addColumn(
        'driver_transaction',
        new TableColumn({
          name: 'payoutAccountId',
          type: 'int',
          isNullable: true,
        }),
      );
      await queryRunner.addColumn(
        'driver_transaction',
        new TableColumn({
          name: 'payoutMethodId',
          type: 'int',
          isNullable: true,
        }),
      );
      await queryRunner.createForeignKey(
        'driver_transaction',
        new TableForeignKey({
          columnNames: ['payoutSessionId'],
          referencedTableName: 'payout_session',
          referencedColumnNames: ['id'],
          onDelete: 'CASCADE',
        }),
      );
      await queryRunner.createForeignKey(
        'driver_transaction',
        new TableForeignKey({
          columnNames: ['payoutAccountId'],
          referencedTableName: 'payout_account',
          referencedColumnNames: ['id'],
          onDelete: 'CASCADE',
        }),
      );
      await queryRunner.createForeignKey(
        'driver_transaction',
        new TableForeignKey({
          columnNames: ['payoutMethodId'],
          referencedTableName: 'payout_method',
          referencedColumnNames: ['id'],
          onDelete: 'CASCADE',
        }),
      );
      await queryRunner.createIndex(
        'driver_transaction',
        new TableIndex({
          columnNames: ['payoutSessionId'],
        }),
      );
      await queryRunner.createIndex(
        'driver_transaction',
        new TableIndex({
          columnNames: ['payoutAccountId'],
        }),
      );
      await queryRunner.createIndex(
        'driver_transaction',
        new TableIndex({
          columnNames: ['payoutMethodId'],
        }),
      );
    } catch (error) {
      /* empty */
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {}
}
