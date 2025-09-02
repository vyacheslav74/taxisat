import { AppType } from '../entities/enums/app-type.enum';
import { LicenseType } from './config.dto';

/**
 * @deprecated
 */
export class LicenseVerifyRemoteResponse {
  token!: string;
  buyerName?: string;
  licenseType?: LicenseType;
  purchasedAt?: string;
  supportExpiry?: string;
  connectedApps?: AppType[];
  benefits?: string[];
  drawbacks?: string[];
  availableUpgrades?: {
    type: LicenseType;
    price: number;
    benefits: string[];
  }[];
}
