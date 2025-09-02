import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:ionicons/ionicons.dart';

class UploadImageField extends StatelessWidget {
  final MediaEntity? initialValue;
  final void Function(MediaEntity?)? onSaved;
  final void Function(MediaEntity?)? onChanged;
  final String? Function(MediaEntity?)? validator;
  final Future<MediaEntity> Function(String) fileUploader;
  final BoxShape shape;
  final double? borderRadius;
  final String uploadButtonText;

  const UploadImageField({
    super.key,
    this.initialValue,
    this.onSaved,
    this.validator,
    required this.fileUploader,
    this.shape = BoxShape.circle,
    this.borderRadius,
    required this.uploadButtonText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<MediaEntity>(
      validator: validator,
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: shape,
                borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
                border: Border.all(
                  color: const Color(0xffe2e8f0),
                  width: 8,
                ),
              ),
              child: state.value != null
                  ? Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: shape,
                        borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius! * 0.5) : null,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: state.value!.address,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          shape: shape,
                          borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius! * 0.5) : null,
                          color: const Color(0xfff4f5fe)),
                      child: const Icon(
                        Ionicons.cloud_upload,
                        color: ColorPalette.primary30,
                      ),
                    ),
            ),
            const SizedBox(
              height: 16,
            ),
            CupertinoButton(
              minSize: 0,
              padding: const EdgeInsets.all(0),
              onPressed: () async {
                final result = await ImagePicker().pickImage(source: ImageSource.gallery);
                if (result != null) {
                  final media = await fileUploader(result.path);
                  state.didChange(media);
                  onChanged?.call(media);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: ColorPalette.primary99,
                  border: Border.all(color: ColorPalette.primary95, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  uploadButtonText,
                  style: context.labelMedium?.copyWith(color: context.theme.colorScheme.onSurfaceVariant),
                ),
              ),
            ),
            if (state.hasError) ...[
              const SizedBox(
                height: 8,
              ),
              Text(
                state.errorText!,
                style: context.bodyMedium?.copyWith(
                  color: context.theme.colorScheme.error,
                ),
              ),
            ]
          ],
        );
      },
    );
  }
}
