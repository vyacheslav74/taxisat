import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopOrderEntity } from './shop-order.entity';
import { Note } from '../fragments/note';
import { OperatorEntity } from '../operator.entity';

@Entity()
export class ShopOrderNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => Note)
  note!: Note;

  @ManyToOne(() => ShopOrderEntity, (order) => order.notes)
  order!: ShopOrderEntity;

  @Column()
  orderId!: number;

  @ManyToOne(() => OperatorEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  staff!: OperatorEntity;

  @Column()
  staffId!: number;
}
