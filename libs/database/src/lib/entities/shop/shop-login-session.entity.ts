import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { ShopEntity } from './shop.entity';
import { SessionInfo } from '../fragments/session-info';

@Entity('shop_login_session')
export class ShopLoginSessionEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column(() => SessionInfo)
  sessionInfo!: SessionInfo;

  @ManyToOne(() => ShopEntity, (shop) => shop.loginSessions, {
    onDelete: 'CASCADE',
    onUpdate: 'NO ACTION',
  })
  shop!: ShopEntity;

  @Column()
  shopId!: number;
}
