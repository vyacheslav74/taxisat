import { Column, CreateDateColumn } from 'typeorm';

export class Note {
  @CreateDateColumn()
  createdAt!: Date;

  @Column()
  note!: string;
}
