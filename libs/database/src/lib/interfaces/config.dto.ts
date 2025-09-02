import { Field, Int, ObjectType, registerEnumType } from '@nestjs/graphql';
import { License } from './license.dto';
import { AppConfigInfoDTO } from './app-config-info.dto';

@ObjectType()
export class CurrentConfiguration {
  purchaseCode?: string;
  backendMapsAPIKey?: string;
  adminPanelAPIKey?: string;
  firebaseProjectPrivateKey?: string;
  versionNumber?: number;
  companyLogo?: string;
  companyName?: string;
  @Field(() => AppConfigInfoDTO, { nullable: true })
  taxi?: AppConfigInfoDTO;
  @Field(() => AppConfigInfoDTO, { nullable: true })
  shop?: AppConfigInfoDTO;
  @Field(() => AppConfigInfoDTO, { nullable: true })
  parking?: AppConfigInfoDTO;
  mysqlHost?: string;
  @Field(() => Int, { nullable: true })
  mysqlPort?: number;
  mysqlUser?: string;
  mysqlPassword?: string;
  mysqlDatabase?: string;
  redisHost?: string;
  @Field(() => Int, { nullable: true })
  redisPort?: number;
  redisPassword?: string;
  @Field(() => Int, { nullable: true })
  redisDb?: number;
}

@ObjectType()
export class UploadResult {
  url!: string;
}

export enum UpdatePurchaseCodeStatus {
  OK = 'OK',
  INVALID = 'INVALID',
  OVERUSED = 'OVERUSED',
  CLIENT_FOUND = 'CLIENT_FOUND',
}

registerEnumType(UpdatePurchaseCodeStatus, {
  name: 'UpdatePurchaseCodeStatus',
});

@ObjectType()
export class UpdatePurchaseCodeResult {
  status!: UpdatePurchaseCodeStatus;
  message?: string;
  data?: LicenseInformationDTO;
  clients?: UpdatePurchaseCodeClient[];
}

@ObjectType()
export class UpdatePurchaseCodeClient {
  id!: number;
  enabled!: boolean;
  ip!: string;
  port!: number;
  token!: string;
  purchaseId!: number;
  firstVerifiedAt!: Date;
  lastVerifiedAt!: Date;
}

@ObjectType('LicenseInformation')
export class LicenseInformationDTO {
  license!: License;
  benefits!: string[];
  drawbacks!: string[];
  availableUpgrades!: AvaialbeUpgrade[];
}

@ObjectType()
export class AvaialbeUpgrade {
  type!: string;
  price!: number;
  benefits!: string[];
}

export enum UpdateConfigStatus {
  OK = 'OK',
  INVALID = 'INVALID',
}

registerEnumType(UpdateConfigStatus, { name: 'UpdateConfigStatus' });

export enum LicenseType {
  Regular = 'Regular',
  Extended = 'Extended',
  Bronze = 'Bronze',
  Silver = 'Silver',
  Gold = 'Gold',
}

registerEnumType(LicenseType, { name: 'LicenseType' });

@ObjectType()
export class UpdateConfigResult {
  status!: UpdateConfigStatus;
  message?: string;
}
