import { OperatorPermission } from '../entities/enums/operator-permission.enum';
import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class GiftCardsPermissions1705734153794 implements MigrationInterface {
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
    } catch (e) {
      /* empty */
    }
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
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
      // await queryRunner.query(
      //   "ALTER TABLE `operator_role` CHANGE `permissions` `permissions` set ('Drivers_View', 'Drivers_Edit', 'Riders_View', 'Riders_Edit', 'Regions_View', 'Regions_Edit', 'Services_View', 'Services_Edit', 'Complaints_View', 'Complaints_Edit', 'Coupons_View', 'Coupons_Edit', 'Announcements_View', 'Announcements_Edit', 'Requests_View', 'Fleets_View', 'Fleets_Edit', 'Gateways_View', 'Gateways_Edit', 'Users_View', 'Users_Edit', 'Cars_View', 'Cars_Edit', 'FleetWallet_View', 'FleetWallet_Edit', 'ProviderWallet_View', 'ProviderWallet_Edit', 'DriverWallet_View', 'DriverWallet_Edit', 'RiderWallet_View', 'RiderWallet_Edit', 'ReviewParameter_Edit', 'Payouts_View', 'Payouts_Edit') NOT NULL",
      // );
    } catch (e) {
      /* empty */
    }
  }
}
