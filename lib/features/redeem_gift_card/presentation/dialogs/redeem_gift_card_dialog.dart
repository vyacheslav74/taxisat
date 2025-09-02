import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:rider_flutter/features/redeem_gift_card/presentation/blocs/redeem_gift_card.dart';
import 'package:rider_flutter/features/redeem_gift_card/presentation/dialogs/redeem_success_dialog.dart';

class RedeemGiftCardDialog extends StatefulWidget {
  const RedeemGiftCardDialog({super.key});

  @override
  State<RedeemGiftCardDialog> createState() => _RedeemGiftCardDialogState();
}

class _RedeemGiftCardDialogState extends State<RedeemGiftCardDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    locator<RedeemGiftCardBloc>().onStarted();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = locator<RedeemGiftCardBloc>();
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BlocProvider.value(
        value: locator<RedeemGiftCardBloc>(),
        child: AppResponsiveDialog(
          type: context.responsive(
            DialogType.bottomSheet,
            xl: DialogType.dialog,
          ),
          onBackPressed: () => context.router.maybePop(),
          header: (
            Ionicons.gift,
            context.translate.redeemGiftCard,
            context.translate.redeemGiftCardDescription,
          ),
          primaryButton: AppPrimaryButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                bloc.onSubmitted();
              }
            },
            child: Text(context.translate.redeem),
          ),
          secondaryButton: AppTextButton(
            text: context.translate.cancel,
            onPressed: () {
              context.router.maybePop();
            },
          ),
          child: BlocConsumer<RedeemGiftCardBloc, RedeemGiftCardState>(
            listener: (context, state) {
              state.formState.mapOrNull(
                success: (success) async {
                  Navigator.of(context).pop(true);
                  showDialog(
                    context: context,
                    useSafeArea: false,
                    builder: (context) => RedeemSuccessDialog(
                      amount: success.data.$1,
                      currency: success.data.$2,
                    ),
                  );
                },
              );
            },
            builder: (context, state) => Form(
              key: _formKey,
              child: TextFormField(
                onChanged: bloc.onCodeChanged,
                initialValue: state.code,
                validator: (value) => value?.isEmpty == true ? context.translate.pleaseEnterGiftCardCode : null,
                decoration: InputDecoration(
                  errorText: state.formState.maybeMap(
                    error: (error) => error.message,
                    orElse: () => null,
                  ),
                  hintText: context.translate.enterGiftCardCode,
                  prefixIcon: Icon(
                    Ionicons.gift,
                    color: ColorPalette.primary30.withValues(alpha: 0.3),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
