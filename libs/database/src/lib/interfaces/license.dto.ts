import { ObjectType, registerEnumType } from '@nestjs/graphql';
import { LicenseType } from './config.dto';
import { AppType } from '../entities/enums/app-type.enum';
import { PlatformAddOn } from 'license-verify';

@ObjectType('License')
export class License {
  buyerName!: string;
  licenseType!: LicenseType;
  supportExpireDate?: Date;
  connectedApps!: AppType[];
  platformAddons!: PlatformAddOn[];
}
registerEnumType(PlatformAddOn, {
  name: 'PlatformAddOn',
});
