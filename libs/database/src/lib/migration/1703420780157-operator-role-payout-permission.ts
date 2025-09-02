import { OperatorPermission } from '../entities/enums/operator-permission.enum';
import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class OperatorRolePayoutPermission1703420780157
  implements MigrationInterface
{
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.changeColumn(
        'operator_role',
        'permissions',
        new TableColumn({
          name: 'permissions',
          type: 'set',
          enum: Object.values(OperatorPermission),
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {}
}
