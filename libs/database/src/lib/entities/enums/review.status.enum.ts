import { registerEnumType } from '@nestjs/graphql';

export enum ReviewStatus {
  Pending = 'pending',
  Approved = 'approved',
  ApprovedUnpublished = 'approved_unpublished',
  Rejected = 'rejected',
  Overridden = 'overridden',
}

registerEnumType(ReviewStatus, {
  name: 'ReviewStatus',
  description: undefined,
});
