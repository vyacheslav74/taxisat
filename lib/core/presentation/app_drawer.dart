import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/blocs/route.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/avatars/app_avatar.dart';
import 'package:rider_flutter/config/router/nav_item.dart';
import 'package:rider_flutter/gen/assets.gen.dart';
import 'package:flutter_common/core/presentation/menu/app_drawer_item.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  final bool showHeader;

  const AppDrawer({
    super.key,
    this.showHeader = true,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: locator<AuthBloc>(),
        ),
        BlocProvider.value(
          value: locator<RouteCubit>(),
        ),
      ],
      child: Container(
        width: 320,
        decoration: const BoxDecoration(
          color: ColorPalette.neutralVariant99,
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(30),
          ),
        ),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              children: [
                if (showHeader)
                  Container(
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(30),
                      ),
                      image: DecorationImage(
                        image: Assets.images.drawerTopBackground.provider(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SafeArea(
                      bottom: false,
                      right: false,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.primary95,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: AppAvatar(
                                avatar: state.map(
                                  authenticated: (authenticated) => authenticated.avatar,
                                  unauthenticated: (unauthenticated) => none(),
                                ),
                                defaultAvatarPath: Env.defaultAvatar,
                              ),
                            ),
                            const SizedBox(width: 32),
                            state.map(
                                unauthenticated: (_) => const SizedBox(),
                                authenticated: (authenticated) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        authenticated.profile.fullName,
                                        style: context.labelMedium,
                                      ),
                                      Text(
                                        authenticated.profile.mobileNumberFormatted,
                                        style: context.bodySmall,
                                      )
                                    ],
                                  );
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: BlocBuilder<RouteCubit, NavItem>(
                        builder: (context, stateRoute) {
                          return Column(
                            children: [
                              context.responsive(
                                const SizedBox(),
                                xl: AppDrawerItem(
                                  icon: NavItem.home.icon,
                                  title: NavItem.home.name(context),
                                  isSelected: stateRoute == NavItem.home,
                                  onPressed: () => NavItem.home.onPressed(context),
                                ),
                              ),
                              ...(state.isAuthenticated
                                      ? signedInNavItems.where(
                                          (element) => context.responsive(
                                            true,
                                            xl: element != NavItem.announcements,
                                          ),
                                        )
                                      : signedOutNavItems)
                                  .map(
                                (e) => AppDrawerItem(
                                  icon: e.icon,
                                  title: e.name(context),
                                  isSelected: stateRoute == e,
                                  onPressed: () => e.onPressed(context),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),


                ListTile(
                  leading: const Icon(Icons.star),
                  title: const Text('стоимость от 85р.',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold, // Установка жирности шрифта
                    ),
                  ),

                ),

                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text(
                    'Заказать по телефону +7-904-814-41-14',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () async {
                    final uri = Uri.parse('tel:+79048144114');
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Не удалось инициировать звонок';
                    }
                  },
                  splashColor: Colors.blue.withAlpha(76),  // ≈ 30% opacity (255 * 0.3)
                  hoverColor: Colors.blue.withAlpha(25),   // ≈ 10% opacity (255 * 0.1)
                )
,
                ListTile(
            leading: SizedBox( // Фиксированный размер
            width: 35,
            height: 35,
            child: Image.asset('assets/images/ride-history-empty-state.png'),),
                  title: const Text('приложение для водителей',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold, // Установка жирности шрифта
                    ),
                  ),
                  onTap: () async {
                    final uri = Uri.parse('https://driver.taxi-voyazh.ru/');
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Не удалось инициировать ';
                    }
                  },
                ),


                BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox(),
                    authenticated: (authenticated) {
                      return SafeArea(
                        top: false,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: AppDrawerItem(
                            icon: NavItem.logout.icon,
                            title: NavItem.logout.name(context),
                            onPressed: () => NavItem.logout.onPressed(context),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}
