import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/datasources/upload_datasource.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/upload_image_field.dart';
import 'package:rider_flutter/features/profile/domain/repositories/profile_repository.dart';
import 'package:rider_flutter/features/profile/presentation/components/preset_avatar_item.dart';

class SelectProfileImageDialog extends StatefulWidget {
  const SelectProfileImageDialog({super.key});

  @override
  State<SelectProfileImageDialog> createState() => _SelectProfileImageDialogState();
}

class _SelectProfileImageDialogState extends State<SelectProfileImageDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late dartz.Option<dartz.Either<int, MediaEntity>> avatar;
  bool isSaving = false;

  @override
  void initState() {
    avatar = locator<AuthBloc>().state.map(
          authenticated: (authenticated) {
            if (authenticated.profile.profileImage != null) {
              return dartz.Some(dartz.Right(authenticated.profile.profileImage!));
            } else if (authenticated.profile.presetProfileImage != null) {
              return dartz.Some(dartz.Left(authenticated.profile.presetProfileImage!));
            } else {
              return dartz.none();
            }
          },
          unauthenticated: (unauthenticated) => throw Exception(
            'Unauthenticated user',
          ),
        );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      header: (
        Ionicons.person_circle,
        context.translate.selectProfileImage,
        null,
      ),
      primaryButton: AppPrimaryButton(
        isDisabled: isSaving,
        onPressed: () async {
          formKey.currentState?.save();
          setState(() {
            isSaving = true;
          });
          final update = await locator<ProfileRepository>().uploadProfileImage(
            image: avatar.fold(
              () => throw Exception('Avatar is not selected'),
              (a) => a,
            ),
          );
          setState(() {
            isSaving = false;
          });
          update.fold(
            (l) => throw Exception('Error updating profile'),
            (r) {
              locator<AuthBloc>().profileUpdated(
                r,
              );
              Navigator.of(context).pop();
            },
          );
        },
        child: Text(
          context.translate.saveChanges,
        ),
      ),
      child: Form(
        key: formKey,
        child: FormField<dartz.Either<int, MediaEntity>>(
          initialValue: avatar.fold(() => null, (a) => a),
          onSaved: (newValue) => avatar = dartz.some(newValue!),
          builder: (state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UploadImageField(
                  initialValue: state.value?.fold((l) => null, (r) => r),
                  onChanged: (media) {
                    state.didChange(dartz.right(media!));
                  },
                  uploadButtonText: context.translate.uploadImage,
                  fileUploader: (path) {
                    return locator<UploadDatasource>().uploadProfilePicture(path);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  context.translate.chooseAvatarDescription,
                  style: context.titleSmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 160,
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: [
                        for (var i = 1; i <= 30; i++)
                          PresetAvatarItem(
                            index: i,
                            onPressed: (value) => state.didChange(dartz.left(value)),
                            selectedIndex: state.value?.fold((l) => l, (r) => null),
                          )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
