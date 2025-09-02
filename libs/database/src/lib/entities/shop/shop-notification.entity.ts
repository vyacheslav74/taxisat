import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { AnnouncementEntity } from '../announcement.entity';
import { ShopNotificationType } from './enums/shop-notification-type.enum';
import { ShopFeedbackEntity } from './shop-feedback.entity';
import { ShopOrderCartEntity } from './shop-order-cart.entity';
import { ShopSupportRequestEntity } from './shop-support-request.entity';
import { ShopTransactionEntity } from './shop-transaction.entity';
import { ShopEntity } from './shop.entity';

@Entity('shop_notification')
export class ShopNotificationEntity {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column('enum', {
    enum: ShopNotificationType,
  })
  type!: ShopNotificationType;

  @Column({
    nullable: true,
  })
  readAt?: Date;

  @Column()
  createdAt!: Date;

  @Column({
    nullable: true,
  })
  title?: string;

  @Column({
    nullable: true,
  })
  message?: string;

  @ManyToOne(() => ShopEntity, (shop) => shop.notifications)
  shop?: ShopEntity;

  @Column()
  shopId!: number;

  @ManyToOne(() => AnnouncementEntity)
  announcement?: AnnouncementEntity;

  @Column({
    nullable: true,
  })
  announcementId?: number;

  @Column({
    nullable: true,
  })
  shopOrderCartId?: number;

  @ManyToOne(() => ShopOrderCartEntity)
  shopOrderCart?: ShopOrderCartEntity;

  @Column({
    nullable: true,
  })
  shopSupportRequestId?: number;

  @ManyToOne(() => ShopSupportRequestEntity)
  shopSupportRequest?: ShopSupportRequestEntity;

  @Column({
    nullable: true,
  })
  payoutShopTransactionId?: number;

  @ManyToOne(() => ShopTransactionEntity)
  payoutShopTransaction?: ShopTransactionEntity;

  @Column({
    nullable: true,
  })
  shopFeedbackId?: number;

  @ManyToOne(() => ShopFeedbackEntity)
  shopFeedback?: ShopFeedbackEntity;
}
