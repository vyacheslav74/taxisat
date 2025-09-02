import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class PayoutAccountFeature1701977160261 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'payout_account',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            },
            {
              name: 'name',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'driverId',
              type: 'int',
            },
            {
              name: 'paymentGatewayId',
              type: 'int',
              isNullable: true,
            },
            {
              name: 'token',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountNumber',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'routingNumber',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderName',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'bankName',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'isDefault',
              type: 'boolean',
              default: false,
            },
            {
              name: 'isVerified',
              type: 'boolean',
              default: false,
            },
            {
              name: 'branchName',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderAddress',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderCity',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderState',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderZip',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderCountry',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderPhone',
              type: 'varchar',
              isNullable: true,
            },
            {
              name: 'accountHolderDateOfBirth',
              type: 'datetime',
              isNullable: true,
            },
            {
              name: 'createdAt',
              type: 'datetime',
              default: 'NOW()',
            },
            {
              name: 'updatedAt',
              type: 'datetime',
              isNullable: true,
            },
            {
              name: 'deletedAt',
              type: 'datetime',
              isNullable: true,
            },
          ],
          foreignKeys: [
            {
              name: 'FK_payout_account_driver',
              columnNames: ['driverId'],
              referencedTableName: 'driver',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              name: 'FK_payout_account_payment_gateway',
              columnNames: ['paymentGatewayId'],
              referencedTableName: 'payment_gateway',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
        }),
      );
    } catch (e) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropTable('payout_account');
    } catch (e) {}
  }
}
