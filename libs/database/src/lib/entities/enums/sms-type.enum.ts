import { registerEnumType } from '@nestjs/graphql';

export enum SMSType {
  OTP = 'OTP',
  NOTIFICATION = 'NOTIFICATION',
  PROMOTIONAL = 'PROMOTIONAL',
  TRANSACTIONAL = 'TRANSACTIONAL',
}

registerEnumType(SMSType, {
  name: 'SMSType',
});
