import { registerEnumType } from '@nestjs/graphql';

export enum ShopStatus {
  PendingSubmission = 'pending_submission',
  PendingApproval = 'pending_approval',
  Active = 'active',
  Inactive = 'inactive',
  Deleted = 'deleted',
  Blocked = 'blocked',
}

registerEnumType(ShopStatus, {
  name: 'ShopStatus',
  description: 'The status of the shop',
});
