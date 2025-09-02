import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/app_menu_item.dart';

class WalletPaymentMethod extends StatelessWidget {
  const WalletPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        AppMenuItem(
            icon: Ionicons.card,
            title: context.translate.paymentMethods,
            onPressed: () {
              context.router.push(const PaymentMethodsRoute());
            }),
      ],
    );
  }
}
