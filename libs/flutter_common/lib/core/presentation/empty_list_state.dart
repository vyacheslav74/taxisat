import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';

class EmptyListState extends StatelessWidget {
  final String? imagePath;
  final String title;
  final String? subTitle;
  final String? buttonText;
  final Function? onPressed;

  const EmptyListState({Key? key, this.imagePath, required this.title, this.subTitle, this.buttonText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (imagePath != null) ...[
            Image.asset(
              imagePath!,
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
          Text(
            title,
            style: context.titleMedium,
            textAlign: TextAlign.center,
          ),
          if (subTitle != null) ...[
            const SizedBox(
              height: 12,
            ),
            Text(
              subTitle!,
              style: context.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
          if (buttonText != null) ...[
            const SizedBox(
              height: 16,
            ),
            AppPrimaryButton(
              onPressed: () {
                if (onPressed != null) onPressed!();
              },
              child: Text(buttonText!),
            ),
          ]
        ],
      ),
    );
  }
}
