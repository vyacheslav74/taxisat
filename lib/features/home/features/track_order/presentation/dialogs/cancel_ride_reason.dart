import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/buttons/app_radio_button.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/blocs/cancel_reason.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/blocs/track_order.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class CancelRideReasonDialog extends StatefulWidget {
  const CancelRideReasonDialog({
    super.key,
  });

  @override
  State<CancelRideReasonDialog> createState() => _CancelRideReasonDialogState();
}

class _CancelRideReasonDialogState extends State<CancelRideReasonDialog> {
  CancelReasonEntity? selectedReason;

  @override
  void initState() {
    super.initState();
    locator<CancelReasonCubit>().onStarted();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<CancelReasonCubit>(),
      child: AppResponsiveDialog(
        type: context.responsive(
          DialogType.bottomSheet,
          xl: DialogType.dialog,
        ),
        primaryButton: AppBorderedButton(
          isDisabled: selectedReason == null,
          onPressed: () {
            Navigator.of(context).pop();

            locator<TrackOrderBloc>().cancelRide(
              cancelReasonId: selectedReason!.id,
              cancelReasonNote: null,
            );
          },
          title: context.translate.confirmAndCancelRide,
          textColor: ColorPalette.error40,
          isPrimary: true,
        ),
        header: (
          Ionicons.close_circle,
          context.translate.rideCancellation,
          null,
        ),
        iconColor: ColorPalette.error40,
        secondaryButton: AppTextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: context.translate.goBackToRide,
        ),
        child: BlocBuilder<CancelReasonCubit, CancelReasonState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: AnimationDuration.pageStateTransitionMobile,
              child: state.map(
                initial: (_) => const SizedBox.shrink(),
                loading: (_) => Assets.lottie.loading.lottie(width: double.infinity, height: 300),
                error: (error) => Text(error.message),
                loaded: (loaded) => Column(
                  children: loaded.data
                      .map(
                        (e) => CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                e.name,
                                style: context.labelLarge,
                              )),
                              AppRadioButton(
                                groupValue: selectedReason,
                                value: e,
                                onChanged: (value) => setState(
                                  () => selectedReason = e,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () => setState(
                            () => selectedReason = e,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
