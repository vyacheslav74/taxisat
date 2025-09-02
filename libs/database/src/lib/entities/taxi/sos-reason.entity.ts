import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { SOSEntity } from './sos.entity';

@Entity('sos_reason')
export class SOSReasonEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  name!: string;

  @Column({
    default: true,
  })
  isActive!: boolean;

  @OneToMany(() => SOSEntity, (sos) => sos.reason)
  sos!: SOSEntity[];
}
