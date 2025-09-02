import 'package:auto_route/auto_route.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';

import '../../domain/repositories/profile_repository.dart';

class DeleteAccountDialog extends StatelessWidget {
  const DeleteAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      header: (
        Ionicons.trash_bin,
        context.translate.deleteAccount,
        context.translate.deleteAccountNotice,
      ),
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      primaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        title: context.translate.cancel,
      ),
      secondaryButton: AppPrimaryButton(
        onPressed: () async {
          final result = await locator<ProfileRepository>().deleteAccount();
          result.fold(
            (l) => context.showSnackBar(
              message: l.errorMessage,
            ),
            (r) async {
              context.showSnackBar(
                message: context.translate.accountDeleted,
              );
              await context.router.replaceAll([const AuthRoute()]);

              locator<AuthBloc>().onLoggedOut();
            },
          );
        },
        color: PrimaryButtonColor.error,
        child: Text(context.translate.confirmAndDeleteAccount),
      ),
      child: const SizedBox(),
    );
  }
}
