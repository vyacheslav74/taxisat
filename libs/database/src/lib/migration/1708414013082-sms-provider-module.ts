import { SMSProviderType } from '../entities/enums/sms-provider-type.enum';
import { MigrationInterface, QueryRunner, Table, TableColumn } from 'typeorm';
import { existsSync, promises } from 'fs';
import { OperatorPermission } from '../entities/enums/operator-permission.enum';

export class SmsProviderModule1708414013082 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'sms_provider',
          columns: [
            new TableColumn({
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            }),
            new TableColumn({
              name: 'name',
              type: 'varchar',
              isNullable: false,
            }),
            new TableColumn({
              name: 'type',
              type: 'enum',
              enum: Object.values(SMSProviderType),
              isNullable: false,
            }),
            new TableColumn({
              name: 'isDefault',
              type: 'boolean',
              isNullable: false,
              default: false,
            }),
            new TableColumn({
              name: 'accountId',
              type: 'varchar',
              isNullable: true,
            }),
            new TableColumn({
              name: 'authToken',
              type: 'varchar',
              isNullable: true,
            }),
            new TableColumn({
              name: 'fromNumber',
              type: 'varchar',
              isNullable: true,
            }),
            new TableColumn({
              name: 'verificationTemplate',
              type: 'text',
              isNullable: true,
            }),
            new TableColumn({
              name: 'smsType',
              type: 'varchar',
              isNullable: true,
            }),
            new TableColumn({
              name: 'createdAt',
              type: 'datetime',
              default: 'NOW()',
            }),
            new TableColumn({
              name: 'deletedAt',
              type: 'datetime',
              isNullable: true,
            }),
          ],
        }),
        true,
      );
      const configAddress = `${process.cwd()}/config/config.${
        process.env.NODE_ENV ?? 'production'
      }.json`;
      if (existsSync(configAddress)) {
        const file = await promises.readFile(configAddress, {
          encoding: 'utf-8',
        });
        const config: ICurrentConfiguration = JSON.parse(file as string);
        if (
          config.twilioAccountSid &&
          config.twilioAuthToken &&
          config.twilioFromNumber &&
          config.twilioVerificationCodeSMSTemplate
        ) {
          await queryRunner.query(
            `INSERT INTO sms_provider (name, type, isDefault, accountId, authToken, fromNumber, verificationTemplate, smsType) VALUES ('Twilio', 'Twilio', 1, '${config.twilioAccountSid}', '${config.twilioAuthToken}', '${config.twilioFromNumber}', '${config.twilioVerificationCodeSMSTemplate}', null)`,
          );
        }
      }
      await queryRunner.changeColumn(
        'operator_role',
        'permissions',
        new TableColumn({
          name: 'permissions',
          type: 'set',
          enum: Object.values(OperatorPermission),
        }),
      );
    } catch (error) {
      /* empty */
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropTable('sms_provider');
    } catch (error) {
      /* empty */
    }
  }
}

interface ICurrentConfiguration {
  purchaseCode?: string;
  backendMapsAPIKey?: string;
  adminPanelAPIKey?: string;
  twilioAccountSid?: string;
  twilioAuthToken?: string;
  twilioFromNumber?: string;
  twilioVerificationCodeSMSTemplate?: string;
  firebaseProjectPrivateKey?: string;
}
