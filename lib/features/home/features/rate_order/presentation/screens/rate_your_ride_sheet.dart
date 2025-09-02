import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/avatars/app_avatar.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:rider_flutter/core/presentation/review_parameter_widget.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/gen/assets.gen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dartz/dartz.dart' as dartz;

import '../blocs/rate_order.dart';

class RateYourRideSheet extends StatefulWidget {
  final OrderEntity order;

  const RateYourRideSheet({
    super.key,
    required this.order,
  });

  @override
  State<RateYourRideSheet> createState() => _RateYourRideSheetState();
}

class _RateYourRideSheetState extends State<RateYourRideSheet> {
  int? rating;
  String? comment;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    locator<RateOrderBloc>().onStarted();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = locator<RateOrderBloc>();
    return BlocProvider.value(
      value: locator<RateOrderBloc>(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: rating == null ? 300 : 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.drawerTopBackground.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: AppCloseButton(
                    onPressed: () => bloc.skipReview(orderId: widget.order.id),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -33),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppAvatar(
                  avatar: widget.order.driver?.avatar ?? dartz.none(),
                  defaultAvatarPath: Env.defaultAvatar,
                ),
                if (rating == null) ...[
                  const SizedBox(height: 8),
                  Text(widget.order.driver?.fullName ?? '', style: context.titleMedium),
                  const SizedBox(height: 4),
                  Text(
                    widget.order.driver?.vehicleInfo ?? '',
                    style: context.bodyMedium?.copyWith(
                      color: ColorPalette.neutralVariant50,
                    ),
                  ),
                ]
              ],
            ),
          ),
          if (rating == null) const Spacer(),
          Text(
            widget.order.driver?.ratingTitle(context, rating) ?? '',
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
          SizedBox(height: rating == null ? 16 : 8),
          Center(
            child: RatingBar.builder(
                itemSize: rating == null ? 46 : 32,
                unratedColor: ColorPalette.neutral90,
                glow: false,
                allowHalfRating: true,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: rating == null ? 46 : 32,
                    height: rating == null ? 46 : 32,
                    decoration: const ShapeDecoration(
                      shape: StarBorder(
                        innerRadiusRatio: 0.45,
                        pointRounding: 0.2,
                      ),
                      color: ColorPalette.secondary70,
                    ),
                  );
                },
                itemCount: 5,
                initialRating: rating?.toDouble() ?? 0,
                onRatingUpdate: (value) => setState(() => rating = value.toInt())),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BlocConsumer<RateOrderBloc, RateOrderState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    reviewSubmitted: (value) => locator<HomeCubit>().initializeWelcome(
                      pickupPoint: locator<LocationCubit>().state.place,
                    ),
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox(),
                    loading: (value) => Assets.lottie.loading.lottie(width: 100, height: 300),
                    reviewSubmitted: (value) => Assets.lottie.loading.lottie(width: 100, height: 300),
                    parametersLoaded: (value) {
                      if (rating != null) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  TabBar(
                                    indicatorColor: ColorPalette.primary40,
                                    labelColor: ColorPalette.primary50,
                                    unselectedLabelColor: context.theme.colorScheme.onSurfaceVariant,
                                    tabs: [
                                      Tab(
                                        height: 50,
                                        child: Column(
                                          children: [
                                            const Icon(
                                              Ionicons.heart_circle,
                                              color: ColorPalette.semanticgreen70,
                                            ),
                                            Text(context.translate.nicePoints),
                                          ],
                                        ),
                                      ),
                                      Tab(
                                          height: 50,
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Ionicons.heart_dislike_circle,
                                                color: ColorPalette.error50,
                                              ),
                                              Text(context.translate.negativePoints),
                                            ],
                                          )),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Container(
                                    constraints: const BoxConstraints(maxHeight: 100),
                                    child: TabBarView(
                                      children: [
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: 8,
                                          runSpacing: 8,
                                          children: value.strengthParameters
                                              .map((e) => Padding(
                                                    padding: const EdgeInsets.only(bottom: 8),
                                                    child: ReviewParameterWidget(
                                                      onPressed: () => bloc.onParameterTapped(e),
                                                      title: e.name,
                                                      isGood: e.isGood,
                                                      isSelected: state.maybeMap(
                                                        orElse: () => null,
                                                        parametersLoaded: (value) => value.parameterSelected(e),
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                        ),
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: 8,
                                          runSpacing: 8,
                                          children: value.weaknessParameters
                                              .map(
                                                (e) => Padding(
                                                  padding: const EdgeInsets.only(bottom: 8),
                                                  child: ReviewParameterWidget(
                                                    title: e.name,
                                                    onPressed: () => bloc.onParameterTapped(e),
                                                    isGood: e.isGood,
                                                    isSelected: state.maybeMap(
                                                      orElse: () => null,
                                                      parametersLoaded: (value) => value.parameterSelected(e),
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: context.translate.reviewCommentBoxHint,
                                    ),
                                    minLines: 2,
                                    maxLines: 4,
                                    onChanged: (value) => comment = value,
                                  ),
                                  if (rating?.toDouble() == 5) ...[
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isFavorite,
                                          onChanged: (value) => setState(
                                            () => isFavorite = value!,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(context.translate.addToFavoriteDrivers),
                                      ],
                                    )
                                  ],
                                ],
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  );
                },
              ),
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<RateOrderBloc, RateOrderState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox(),
                    parametersLoaded: (value) {
                      return AppPrimaryButton(
                        isDisabled: rating == null,
                        onPressed: () {
                          if (rating != null) {
                            bloc.onReviewSubmitted(
                              rating: rating!,
                              comment: comment,
                              orderId: widget.order.id,
                              parameters: value.selectedParameters,
                              isFavorite: false,
                            );
                          }
                        },
                        child: Text(context.translate.submitFeedback),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
