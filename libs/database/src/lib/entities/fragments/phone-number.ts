import { Column } from 'typeorm';

export class PhoneNumber {
  @Column('char', {
    length: 3,
  })
  countryCode!: string;

  @Column('bigint', {
    unique: true,
  })
  number!: string;
}
