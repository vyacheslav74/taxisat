import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/chips/square_icon_chip.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:rider_flutter/features/profile/presentation/dialogs/delete_account_dialog.dart';

import '../components/avatar_select_button.dart';

@RoutePage()
class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: context.responsive(16, xl: 24),
        vertical: context.responsive(
          16,
          xl: 24,
        ),
      ),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.map(
            unauthenticated: (_) => const Text("Unauthorized"),
            authenticated: (authenticated) => SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        context.responsive(
                          const SizedBox(),
                          xl: const SizedBox(
                            height: 80,
                          ),
                        ),
                        AppTopBar(title: context.translate.profileInfo),
                        const SizedBox(height: 32),
                        AvatarSelectButton(
                          avatar: state.avatar,
                        ),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            const SquareIconChip(
                              icon: Ionicons.person,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                context.translate.fullName,
                                style: context.bodyMedium?.copyWith(color: ColorPalette.neutralVariant50),
                              ),
                            ),
                            Text(
                              state.fullName,
                              style: context.labelLarge,
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 48,
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SquareIconChip(
                              icon: Ionicons.call,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                context.translate.mobileNumber,
                                style: context.bodyMedium?.copyWith(
                                  color: ColorPalette.neutralVariant50,
                                ),
                              ),
                            ),
                            Text(
                              authenticated.profile.mobileNumberFormatted,
                              style: context.labelLarge,
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 48,
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SquareIconChip(
                              icon: Ionicons.mail,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                context.translate.email,
                                style: context.bodyMedium?.copyWith(color: ColorPalette.neutralVariant50),
                              ),
                            ),
                            Text(
                              authenticated.profile.email ?? "-",
                              style: context.labelLarge,
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 48,
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SquareIconChip(
                              icon: Ionicons.male_female,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                context.translate.gender,
                                style: context.bodyMedium?.copyWith(color: ColorPalette.neutralVariant50),
                              ),
                            ),
                            Text(
                              authenticated.profile.gender?.title(context) ?? context.translate.unknown,
                              style: context.labelLarge,
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 48,
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: context.responsive(double.infinity, xl: null),
                    child: AppBorderedButton(
                      textColor: ColorPalette.error40,
                      onPressed: () {
                        showDialog(
                          context: context,
                          useSafeArea: false,
                          builder: (context) => const DeleteAccountDialog(),
                        );
                      },
                      title: context.translate.deleteAccount,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
