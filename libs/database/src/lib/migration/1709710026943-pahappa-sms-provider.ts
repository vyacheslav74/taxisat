import { SMSProviderType } from '../entities/enums/sms-provider-type.enum';
import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class PahappaSmsProvider1709710026943 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.changeColumn(
      'sms_provider',
      'type',
      new TableColumn({
        name: 'type',
        type: 'enum',
        enum: Object.values(SMSProviderType),
      }),
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {}
}
