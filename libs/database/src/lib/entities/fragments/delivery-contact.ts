import { PhoneNumber } from './phone-number';

export class DeliveryContact {
  name!: string;
  phoneNumber!: PhoneNumber;
  email?: string;
  addressLine1!: string;
  addressLine2?: string;
  zone?: string;
  buildingNumber?: string;
  apartmentNumber?: string;
  city?: string;
  state?: string;
  instructions?: string;
  postalCode?: string;
  companyName?: string;
}
