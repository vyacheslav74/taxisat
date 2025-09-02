import {
  Column,
  Entity,
  JoinColumn,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { AnnouncementUserType } from './enums/anouncement-user-type.enum';
import { MediaEntity } from './media.entity';
import { AppType } from './enums/app-type.enum';

@Entity('promotion')
export class AnnouncementEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('set', {
    enum: AnnouncementUserType,
    default: [AnnouncementUserType.Rider],
  })
  userType!: AnnouncementUserType[];

  @Column('enum', {
    enum: AppType,
    nullable: true,
  })
  appType?: AppType;

  @Column({
    name: 'startTimestamp',
  })
  startAt!: Date;

  @Column({
    name: 'expirationTimestamp',
  })
  expireAt!: Date;

  @Column()
  title!: string;

  @Column({
    nullable: true,
  })
  url?: string;

  @Column()
  description!: string;

  @OneToOne(() => MediaEntity, (media) => media.announcement)
  @JoinColumn()
  media?: MediaEntity;

  @Column({ nullable: true })
  mediaId?: number;
}
