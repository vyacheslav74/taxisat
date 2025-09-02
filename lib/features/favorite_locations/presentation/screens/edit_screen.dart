import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/favorite_locations.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/components/select_place_form_field.dart';
import 'package:rider_flutter/features/home/presentation/blocs/destination_suggestions.dart';

import '../../models/update_favorite_location_input.dart';
import '../blocs/desktop_map.dart';
import '../blocs/edit.dart';

@RoutePage()
class EditFavoriteLocationScreen extends StatefulWidget {
  final FavoriteLocationEntity entity;

  const EditFavoriteLocationScreen({
    super.key,
    required this.entity,
  });

  @override
  State<EditFavoriteLocationScreen> createState() => _EditFavoriteLocationScreenState();
}

class _EditFavoriteLocationScreenState extends State<EditFavoriteLocationScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    locator<FavoriteLocationsDesktopMapCubit>().viewOne(
      name: widget.entity.name,
      location: widget.entity.place,
    );
    locator<EditFavoriteLocationCubit>().init(
      addressType: widget.entity.type,
      addressName: widget.entity.name,
      selectedLocation: widget.entity.place,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final editBloc = locator<EditFavoriteLocationCubit>();
    return BlocProvider.value(
      value: locator<EditFavoriteLocationCubit>(),
      child: Container(
        clipBehavior: Clip.none,
        padding: context.responsive(
          const EdgeInsets.all(16),
          xl: const EdgeInsets.all(24),
        ),
        color: context.theme.scaffoldBackgroundColor,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTopBar(
                title: context.translate.createAFavoriteLocation,
                trailing: CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    locator<EditFavoriteLocationCubit>().delete(widget.entity.id);
                  },
                  child: const Icon(
                    Ionicons.trash,
                    color: ColorPalette.error40,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: BlocConsumer<EditFavoriteLocationCubit, EditFavoriteLocationState>(
                  listener: (context, state) {
                    state.formState.mapOrNull(error: (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(error.message),
                        ),
                      );
                    }, success: (success) {
                      locator<FavoriteLocationsCubit>().onStarted();
                      locator<DestinationSuggestionsCubit>().onStarted();
                      context.router.maybePop();
                    });
                  },
                  builder: (context, state) {
                    return Form(
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
                            onChanged: editBloc.updateAddressType,
                            onSaved: editBloc.updateAddressType,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            initialValue: state.addressName,
                            onSaved: editBloc.updateAddressName,
                            validator: (value) => (value?.isEmpty ?? true) ? context.translate.fieldIsRequired : null,
                            decoration: InputDecoration(
                              labelText: context.translate.addressTitleLabel,
                              isDense: true,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          SelectPlaceFormField(
                            onSaved: editBloc.updateSelectedLocation,
                            initialValue: state.selectedLocation,
                            onChanged: editBloc.updateSelectedLocation,
                            markerTitle: state.addressName ?? "",
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              BlocBuilder<EditFavoriteLocationCubit, EditFavoriteLocationState>(
                builder: (context, state) {
                  return AppPrimaryButton(
                    isDisabled: state.formState.isBusy,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        locator<EditFavoriteLocationCubit>().save(
                          id: widget.entity.id,
                          input: UpdateFavoriteLocationInput(
                            name: state.addressName!,
                            type: state.addressType!,
                            place: state.selectedLocation!,
                          ),
                        );
                      }
                    },
                    child: Text(context.translate.saveChanges),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
