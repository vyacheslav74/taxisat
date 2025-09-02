import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:rider_flutter/features/announcements/presentation/components/announcement_empty_state.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

import '../blocs/announcements.dart';
import '../components/announcement_item.dart';

@RoutePage()
class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({super.key});

  @override
  State<AnnouncementsScreen> createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen> {
  @override
  void initState() {
    super.initState();
    locator<AnnouncementsBloc>().load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: locator<AnnouncementsBloc>(),
        child: BlocBuilder<AnnouncementsBloc, AnnouncementsState>(
          builder: (context, state) {
            return SafeArea(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.backgroundAnnouncements.provider(),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.responsive(
                      AppBackButton(onPressed: () => context.router.maybePop()),
                      xl: const SizedBox(),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.translate.announcements,
                      style: context.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: AnimationDuration.pageStateTransitionMobile,
                        child: state.map(
                          initial: (_) => const SizedBox.shrink(),
                          loading: (_) => Assets.lottie.loading.lottie(width: double.infinity, height: double.infinity),
                          loaded: (loaded) => ListView.separated(
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              final entity = loaded.data[index];
                              return AnnouncementItem(entity: entity);
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 16);
                            },
                            itemCount: loaded.data.length,
                          ),
                          empty: (_) => const AnnouncementEmptyState(),
                          error: (error) => Container(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
