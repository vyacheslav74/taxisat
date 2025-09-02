import 'package:flutter/material.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/payment_method_list_view.dart';

class AddPaymentMethodDialog extends StatefulWidget {
  final List<PaymentGatewayEntity> paymentGateways;

  const AddPaymentMethodDialog({
    super.key,
    required this.paymentGateways,
  });

  @override
  State<AddPaymentMethodDialog> createState() => _AddPaymentMethodDialogState();
}

class _AddPaymentMethodDialogState extends State<AddPaymentMethodDialog> {
  PaymentMethodUnion? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
        type: context.responsive(
          DialogType.bottomSheet,
          xl: DialogType.dialog,
        ),
        header: (
          Ionicons.card,
          context.translate.addPaymentMethod,
          context.translate.addPaymentMethodDescription,
        ),
        primaryButton: AppPrimaryButton(
          isDisabled: selectedPaymentMethod == null,
          onPressed: () {
            final paymentGateway = widget.paymentGateways.firstWhere(
              (element) =>
                  element.id ==
                  selectedPaymentMethod?.mapOrNull(
                    paymentGateway: (value) => value.paymentGateway.id,
                  ),
            );
            Navigator.of(context).pop(paymentGateway);
          },
          child: Text(context.translate.confirm),
        ),
        secondaryButton: AppBorderedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          title: context.translate.cancel,
        ),
        child: Column(
          children: [
            PaymentMethodListView(
              paymentMethods: widget.paymentGateways
                  .where((element) => element.linkMethod != GatewayLinkMethod.none)
                  .toList()
                  .toPaymentMethodUnion,
              selectedPaymentMethod: null,
              onSelected: (selected) {
                setState(() {
                  selectedPaymentMethod = selected;
                });
              },
            )
          ],
        ));
  }
}
