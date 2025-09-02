import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/app_segmented_amount_field.dart';
import 'package:flutter_common/core/presentation/payment_method_list_view.dart';
import 'package:rider_flutter/features/wallet/presentation/blocs/top_up_wallet.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../blocs/wallet.dart';

class AddCreditDialog extends StatefulWidget {
  final List<PaymentMethodUnion> paymentMethods;
  final String currency;

  const AddCreditDialog({
    super.key,
    required this.paymentMethods,
    required this.currency,
  });

  @override
  State<AddCreditDialog> createState() => _AddCreditDialogState();
}

class _AddCreditDialogState extends State<AddCreditDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double? amount;
  PaymentMethodUnion? paymentMethodUnion;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<TopUpWalletBloc>(),
      child: AppResponsiveDialog(
        type: context.responsive(
          DialogType.bottomSheet,
          xl: DialogType.dialog,
        ),
        onBackPressed: () => context.router.maybePop(),
        header: (Ionicons.wallet, context.translate.addCreditToWallet, null),
        primaryButton: BlocConsumer<TopUpWalletBloc, TopUpWalletState>(
          listener: (context, state) {
            state.mapOrNull(
              loaded: (loaded) {
                loaded.data.map(success: (success) {
                  context.router.maybePop();
                  locator<WalletBloc>().load();
                  context.showSnackBar(
                    message: context.translate.topUpSuccess,
                  );
                }, failure: (failure) {
                  context.showSnackBar(
                    message: 'top up failed',
                  );
                }, redirect: (redirect) {
                  launchUrlString(
                    redirect.url,
                    mode: LaunchMode.externalApplication,
                  );
                });
              },
            );
          },
          builder: (context, state) {
            return AppPrimaryButton(
              isDisabled: state.maybeMap(
                orElse: () => false,
                loading: (_) => true,
              ),
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  formKey.currentState?.save();
                  locator<TopUpWalletBloc>().topUpWallet(
                    paymentMode: paymentMethodUnion!.paymentMode,
                    paymentMethodId: paymentMethodUnion!.id ?? "0",
                    currency: widget.currency,
                    amount: amount!,
                  );
                }
              },
              child: Text(
                context.translate.payNow,
              ),
            );
          },
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.translate.selectAmount,
                style: context.titleSmall,
              ),
              const SizedBox(height: 16),
              Center(
                child: SegmentedAmountField(
                  amounts: Constants.walletPresets,
                  currency: widget.currency,
                  onAmountChanged: (value) {
                    amount = value;
                  },
                  onSaved: (value) {
                    amount = value;
                  },
                ),
              ),
              const SizedBox(height: 16),
              FormField<PaymentMethodUnion>(
                onSaved: (value) {
                  paymentMethodUnion = value;
                },
                builder: (state) {
                  return PaymentMethodListView(
                    paymentMethods: widget.paymentMethods,
                    selectedPaymentMethod: state.value,
                    onSelected: (method) {
                      state.didChange(method);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
