import { PaymentStatus } from '../entities/enums/payment-status.enum';

export interface IntentResult {
  status: 'success' | 'redirect' | 'failed';
  url?: string;
  error?: string;
}

export class ChargeSavedPaymentMethodBody {
  userId!: string;
  userType!: string;
  savedPaymentMethodId!: string;
  amount!: number;
  currency!: string;
  orderNumber!: string;
  returnUrl!: string;
}

export interface DecryptedPaymentResult {
  status: PaymentStatus;
  userType: string;
  userId: number;
  timestamp: number;
  gatewayId: number;
  transactionNumber: string;
  amount: number;
  currency: string;
}

export interface GetPaymentLinkBody {
  userId: string;
  userType: string;
  paymentGatewayId: number;
  amount: string;
  currency: string;
  returnUrl: string;
  shouldPreauth: '1' | '0';
  orderNumber: string | null;
}

export interface SetupSavedPaymentMethodDecryptedBody {
  gatewayId: string;
  userType: 'rider' | 'driver' | 'shop' | 'parking';
  userId: string;
  returnUrl: string;
  currency: string;
}

export interface SetupPayoutMethodBody {
  payoutMethodId: number;
  userType: 'driver' | 'shop' | 'customer';
  driverId: number;
  returnUrl: string;
}
