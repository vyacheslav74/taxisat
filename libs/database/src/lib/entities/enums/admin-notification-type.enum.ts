import { registerEnumType } from '@nestjs/graphql';

export enum AdminNotificationType {
  UserPendingVerification = 'user_pending_verification',
  SupportRequestSubmitted = 'support_request_submitted',
  SupportRequestAssigned = 'support_request_assigned',
  ReviewPendingApproval = 'review_pending_approval',
}

registerEnumType(AdminNotificationType, {
  name: 'AdminNotificationType',
  description: 'The type of admin notification.',
});
