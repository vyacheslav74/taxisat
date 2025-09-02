import { MigrationInterface, QueryRunner, TableColumn } from 'typeorm';

export class PresetAvatarImages1701688138674 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.addColumn(
        'rider',
        new TableColumn({
          name: 'presetAvatarNumber',
          type: 'int',
          isNullable: true,
        }),
      );
      await queryRunner.addColumn(
        'driver',
        new TableColumn({
          name: 'presetAvatarNumber',
          type: 'int',
          isNullable: true,
        }),
      );
    } catch (error) {}
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.dropColumn('rider', 'presetAvatarNumber');
      await queryRunner.dropColumn('driver', 'presetAvatarNumber');
    } catch (error) {}
  }
}
