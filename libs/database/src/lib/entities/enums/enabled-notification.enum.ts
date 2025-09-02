import { registerEnumType } from '@nestjs/graphql';

export enum EnabledNotification {
  SOS = 'sos',
  SupportRequest = 'support_request',
  NewOrder = 'new_order',
  UserPendingVerification = 'user_pending_verification',
}

registerEnumType(EnabledNotification, {
  name: 'EnabledNotification',
});
