import { MigrationInterface, QueryRunner, Table } from 'typeorm';

export class parkingFeedback1702630883360 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    try {
      await queryRunner.createTable(
        new Table({
          name: 'parking_feedback_parameter',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
            },
            {
              name: 'name',
              type: 'varchar',
            },
            {
              name: 'isGood',
              type: 'boolean',
            },
            {
              name: 'createdAt',
              type: 'timestamp',
              default: 'CURRENT_TIMESTAMP',
            },
            {
              name: 'updatedAt',
              type: 'timestamp',
              default: 'CURRENT_TIMESTAMP',
            },
            {
              name: 'deletedAt',
              type: 'timestamp',
              isNullable: true,
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
          name: 'parking_feedback',
          columns: [
            {
              name: 'id',
              type: 'int',
              isPrimary: true,
              isGenerated: true,
            },
            {
              name: 'score',
              type: 'float',
            },
            {
              name: 'comment',
              type: 'varchar',
            },
            {
              name: 'parkSpotId',
              type: 'int',
            },
            {
              name: 'orderId',
              type: 'int',
            },
            {
              name: 'createdAt',
              type: 'timestamp',
              default: 'CURRENT_TIMESTAMP',
            },
            {
              name: 'updatedAt',
              type: 'timestamp',
              default: 'CURRENT_TIMESTAMP',
            },
            {
              name: 'deletedAt',
              type: 'timestamp',
              isNullable: true,
            },
          ],
          foreignKeys: [
            {
              name: 'parkingFeedback_parkSpotId',
              columnNames: ['parkSpotId'],
              referencedTableName: 'park_spot',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              name: 'parkingFeedback_orderId',
              columnNames: ['orderId'],
              referencedTableName: 'park_order',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              name: 'parkingFeedback_parkSpotId',
              columnNames: ['parkSpotId'],
            },
            {
              name: 'parkingFeedback_orderId',
              columnNames: ['orderId'],
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
          name: 'parkingFeedback_parameters_parkingFeedback_parameter',
          columns: [
            {
              name: 'parkingFeedbackId',
              type: 'int',
            },
            {
              name: 'parkingFeedbackParameterId',
              type: 'int',
            },
          ],
          foreignKeys: [
            {
              name: 'parkingFeedbackParameters_parkingFeedbackId',
              columnNames: ['parkingFeedbackId'],
              referencedTableName: 'park_spot_review',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
            {
              name: 'parkingFeedbackParameters_parkingFeedbackParameterId',
              columnNames: ['parkingFeedbackParameterId'],
              referencedTableName: 'park_spot_review_parameter',
              referencedColumnNames: ['id'],
              onDelete: 'CASCADE',
            },
          ],
          indices: [
            {
              name: 'parkingFeedbackParameters_parkingFeedbackId',
              columnNames: ['parkingFeedbackId'],
            },
            {
              name: 'parkingFeedbackParameters_parkingFeedbackParameterId',
              columnNames: ['parkingFeedbackParameterId'],
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

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  public async down(queryRunner: QueryRunner): Promise<void> {}
}
