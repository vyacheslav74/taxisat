import { ParkOrderStatus } from '../entities/parking/enums/park-order-status.enum';
import { ParkSpotCarSize } from '../entities/parking/enums/park-spot-car-size.enum';
import { ParkSpotVehicleType } from '../entities/parking/enums/park-spot-vehicle-type.enum';
import { PaymentMode } from '../entities/enums/payment-mode.enum';
import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class ParkSpotOrder1702630596058 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'park_order',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
              generationStrategy: 'increment',
            },
            {
              name: 'spotOwnerId',
              type: 'int',
            },
            {
              name: 'carOwnerId',
              type: 'int',
            },
            {
              name: 'parkSpotId',
              type: 'int',
            },
            {
              name: 'vehicleType',
              type: 'enum',
              enum: Object.values(ParkSpotVehicleType),
              default: "'Car'",
            },
            {
              name: 'carSize',
              type: 'enum',
              enum: Object.values(ParkSpotCarSize),
              isNullable: true,
            },
            {
              name: 'enterTime',
              type: 'datetime',
            },
            {
              name: 'exitTime',
              type: 'datetime',
            },
            {
              name: 'paymentMode',
              type: 'enum',
              enum: Object.values(PaymentMode),
            },
            {
              name: 'price',
              type: 'float',
              default: 0,
              precision: 12,
              scale: 2,
            },
            {
              name: 'extendedExitTime',
              type: 'datetime',
            },
            {
              name: 'savedPaymentMethodId',
              type: 'int',
              isNullable: true,
            },
            {
              name: 'paymentGatewayId',
              type: 'int',
              isNullable: true,
            },
            {
              name: 'status',
              type: 'enum',
              enum: Object.values(ParkOrderStatus),
            },
            {
              name: 'createdAt',
              type: 'datetime',
            },
          ],
          foreignKeys: [
            {
              name: 'park_order_spot_owner_id',
              columnNames: ['spotOwnerId'],
              referencedTableName: 'park_spot',
              referencedColumnNames: ['id'],
              onDelete: 'SET NULL',
            },
            {
              name: 'park_order_car_owner_id',
              columnNames: ['carOwnerId'],
              referencedTableName: 'rider',
              referencedColumnNames: ['id'],
              onDelete: 'SET NULL',
            },
            {
              name: 'park_order_park_spot_id',
              columnNames: ['parkSpotId'],
              referencedTableName: 'park_spot',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              name: 'park_order_saved_payment_method_id',
              columnNames: ['savedPaymentMethodId'],
              referencedTableName: 'saved_payment_method',
              referencedColumnNames: ['id'],
              onDelete: 'SET NULL',
            },
            {
              name: 'park_order_payment_gateway_id',
              columnNames: ['paymentGatewayId'],
              referencedTableName: 'payment_gateway',
              referencedColumnNames: ['id'],
              onDelete: 'SET NULL',
            },
          ],
          indices: [
            {
              name: 'park_order_spot_owner_id',
              columnNames: ['spotOwnerId'],
            },
            {
              name: 'park_order_car_owner_id',
              columnNames: ['carOwnerId'],
            },
            {
              name: 'park_order_park_spot_id',
              columnNames: ['parkSpotId'],
            },
            {
              name: 'park_order_saved_payment_method_id',
              columnNames: ['savedPaymentMethodId'],
            },
            {
              name: 'park_order_payment_gateway_id',
              columnNames: ['paymentGatewayId'],
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
