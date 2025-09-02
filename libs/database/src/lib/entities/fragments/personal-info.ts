import { Column } from 'typeorm';
import { Gender } from '../enums/gender.enum';

export class PersonalInfo {
  @Column({
    nullable: true,
  })
  firstName?: string;

  @Column({
    nullable: true,
  })
  lastName?: string;

  @Column({
    nullable: true,
  })
  email?: string;

  @Column()
  mobileNumber!: string;

  @Column('enum', {
    enum: Gender,
  })
  gender!: Gender;

  @Column({
    nullable: true,
  })
  address?: string;
}
