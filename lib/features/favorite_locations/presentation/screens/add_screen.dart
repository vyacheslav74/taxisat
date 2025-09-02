import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:rider_flutter/features/favorite_locations/models/update_favorite_location_input.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/add.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/favorite_locations.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/components/select_place_form_field.dart';
import 'package:rider_flutter/features/home/presentation/blocs/destination_suggestions.dart';

@RoutePage()
class AddFavoriteLocationScreen extends StatefulWidget {
  final AddressType? defaultAddressType;

  const AddFavoriteLocationScreen({
    super.key,
    this.defaultAddressType,
  });

  @override
  State<AddFavoriteLocationScreen> createState() => _AddFavoriteLocationScreenState();
}

class _AddFavoriteLocationScreenState extends State<AddFavoriteLocationScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    locator<AddFavoriteLocationCubit>().init(
      addressType: widget.defaultAddressType,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final addBloc = locator<AddFavoriteLocationCubit>();
    return BlocProvider.value(
      value: addBloc,
      child: Container(
        clipBehavior: Clip.none,
        padding: context.responsive(
          const EdgeInsets.all(16),
          xl: const EdgeInsets.all(24),
        ),
        color: context.theme.scaffoldBackgroundColor,
        child: BlocConsumer<AddFavoriteLocationCubit, AddFavoriteLocationState>(
          listener: (context, state) {
            state.formState.mapOrNull(
              success: (success) {
                locator<FavoriteLocationsCubit>().onStarted();
                locator<DestinationSuggestionsCubit>().onStarted();
                context.router.maybePop();
              },
              error: (failure) {
                context.showSnackBar(
                  message: failure.toString(),
                );
              },
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppTopBar(
                    title: context.translate.createAFavoriteLocation,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          DropdownButtonFormField(
                            value: state.addressType,
                            items: AddressType.values
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.name(context),
                                    ),
                                  ),
                                )
                                .toList(),
                            style: context.labelLarge,
                            focusColor: Colors.transparent,
                            icon: const Icon(Ionicons.chevron_forward),
                            elevation: 1,
                            decoration: const InputDecoration(
                              isDense: true,
                              prefixIcon: Icon(
                                Ionicons.list,
                                color: ColorPalette.neutral50,
                              ),
                            ),
                            onChanged: addBloc.updateAddressType,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            validator: (value) => (value?.isEmpty ?? true) ? context.translate.fieldIsRequired : null,
                            decoration: InputDecoration(
                              labelText: context.translate.addressTitleLabel,
                              isDense: true,
                            ),
                            onChanged: addBloc.updateAddressName,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          SelectPlaceFormField(
                            onSaved: addBloc.updateSelectedLocation,
                            initialValue: state.selectedLocation,
                            onChanged: addBloc.updateSelectedLocation,
                            markerTitle: state.addressName,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppPrimaryButton(
                    isDisabled: state.formState.isBusy,
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      formKey.currentState!.save();
                      addBloc.save(
                        input: UpdateFavoriteLocationInput(
                          name: state.addressName!,
                          type: state.addressType!,
                          place: state.selectedLocation!,
                        ),
                      );
                    },
                    child: Text(
                      context.translate.saveChanges,
                    ),
                  ),
                  AppTextButton(
                      text: context.translate.cancel,
                      onPressed: () {
                        context.router.maybePop();
                      })
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
