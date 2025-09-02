import { PaymentGatewayType } from '../entities/enums/payment-gateway-type.enum';
import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class AddPaytrGateway1706253836308 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.changeColumn(
        'payment_gateway',
        'type',
        new TableColumn({
          name: 'type',
          type: 'enum',
          enum: Object.values(PaymentGatewayType),
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {}
}
