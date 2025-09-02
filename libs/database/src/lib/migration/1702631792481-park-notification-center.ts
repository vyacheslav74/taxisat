import { ParkingCustomerNotificationType } from '../entities/parking/enums/parking-customer-notification-type.enum';
import { ParkingProviderNotificationType } from '../entities/parking/enums/parking-provider-notification-type.enum';
import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class ParkNotificationCenter1702631792481 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'parking_customer_notification',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            },
            {
              name: 'type',
              type: 'enum',
              enum: Object.values(ParkingCustomerNotificationType),
            },
            {
              name: 'createdAt',
              type: 'datetime',
            },
            {
              name: 'expireAt',
              type: 'datetime',
              isNullable: true,
            },
            {
              name: 'parkOrderId',
              type: 'int',
            },
            {
              name: 'customerId',
              type: 'int',
            },
          ],
          foreignKeys: [
            {
              name: 'parking_customer_notification_park_order_id_fk',
              columnNames: ['parkOrderId'],
              referencedTableName: 'park_order',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              name: 'parking_customer_notification_customer_id_fk',
              columnNames: ['customerId'],
              referencedTableName: 'rider',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              name: 'parking_customer_notification_park_order_id_idx',
              columnNames: ['parkOrderId'],
            },
            {
              name: 'parking_customer_notification_customer_id_idx',
              columnNames: ['customerId'],
            },
          ],
        }),
      );
    } catch (error) {
      /* empty */
    }
    try {
      await queryRunner.createTable(
        new Table({
          name: 'parking_provider_notification',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            },
            {
              name: 'type',
              type: 'enum',
              enum: Object.values(ParkingProviderNotificationType),
            },
            {
              name: 'createdAt',
              type: 'datetime',
            },
            {
              name: 'expireAt',
              type: 'datetime',
              isNullable: true,
            },
            {
              name: 'parkOrderId',
              type: 'int',
            },
            {
              name: 'providerId',
              type: 'int',
            },
          ],
          foreignKeys: [
            {
              name: 'parking_provider_notification_park_order_id_fk',
              columnNames: ['parkOrderId'],
              referencedTableName: 'park_order',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              name: 'parking_provider_notification_provider_id_fk',
              columnNames: ['providerId'],
              referencedTableName: 'driver',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              name: 'parking_provider_notification_park_order_id_idx',
              columnNames: ['parkOrderId'],
            },
            {
              name: 'parking_provider_notification_provider_id_idx',
              columnNames: ['providerId'],
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
  }

  public async down(): Promise<void> {}
}
