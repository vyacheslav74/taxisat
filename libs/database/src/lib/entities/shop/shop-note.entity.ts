import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopEntity } from './shop.entity';
import { Note } from '../fragments/note';
import { OperatorEntity } from '../operator.entity';

@Entity()
export class ShopNoteEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => Note)
  note!: Note;

  @ManyToOne(() => ShopEntity, (shop) => shop.notes)
  shop!: ShopEntity;

  @Column()
  shopId!: number;

  @ManyToOne(() => OperatorEntity, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  staff!: OperatorEntity;

  @Column()
  staffId!: number;
}
