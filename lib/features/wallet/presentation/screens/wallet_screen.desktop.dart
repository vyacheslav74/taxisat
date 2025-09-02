import 'package:flutter/material.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/wallet/presentation/components/wallet_activities.dart';
import 'package:rider_flutter/features/wallet/presentation/components/wallet_header.dart';
import 'package:rider_flutter/features/wallet/presentation/components/wallet_payment_method.dart';

class WalletScreenDesktop extends StatelessWidget {
  const WalletScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 104, left: 24, right: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.translate.wallet,
            style: context.headlineSmall,
          ),
          const SizedBox(height: 24),
          const WalletHeader(),
          const SizedBox(height: 16),
          const WalletPaymentMethod(),
          const WalletActivities()
        ],
      ),
    );
  }
}
