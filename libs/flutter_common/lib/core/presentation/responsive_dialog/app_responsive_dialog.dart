import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';

import 'app_dialog_header.dart';
import 'app_dialog_header_expanded.dart';

class AppResponsiveDialog extends StatelessWidget {
  final DialogType type;
  final Widget child;
  final String? smallTitle;
  final DialogHeader? header;
  final Widget? primaryButton;
  final Widget? secondaryButton;
  final Widget? teritaryButton;
  final double? maxWidth;
  final double? maxHeight;
  final EdgeInsets contentPadding;
  final Function()? onBackPressed;
  final Color iconColor;

  const AppResponsiveDialog({
    super.key,
    required this.child,
    this.header,
    this.primaryButton,
    this.secondaryButton,
    this.onBackPressed,
    required this.type,
    this.maxWidth,
    this.maxHeight,
    this.contentPadding = const EdgeInsets.all(16),
    this.smallTitle,
    this.iconColor = ColorPalette.primary30,
    this.teritaryButton,
  });

  @override
  Widget build(BuildContext context) {
    if (type == DialogType.fullScreen) {
      return Material(
        child: SafeArea(
          child: Container(
            color: backgroundColor(context),
            child: buildContent(context),
          ),
        ),
      );
    }
    if (type == DialogType.bottomSheet) {
      return BottomSheet(
        enableDrag: false,
        showDragHandle: false,
        backgroundColor: backgroundColor(context),
        constraints: constraints,
        onClosing: () {},
        builder: (context) => ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: Container(
            color: backgroundColor(context),
            child: buildContent(context),
          ),
        ),
      );
    }
    if (type == DialogType.dialog) {
      return Dialog(
        backgroundColor: backgroundColor(context),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: backgroundColor(context),
            constraints: constraints,
            child: buildContent(context),
          ),
        ),
      );
    }
    if (type == DialogType.overlay) {
      return Container(
        constraints: constraints,
        decoration: BoxDecoration(
          color: backgroundColor(context),
          boxShadow: const [
            BoxShadow(
              color: Color(0x43323c2b),
              offset: Offset(0, 3),
              blurRadius: 25,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: buildContent(context),
      );
    }
    if (type == DialogType.close) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Navigator.of(context).pop();
      });
      return const SizedBox.shrink();
    }
    throw Exception("type not implemented");
  }

  Color backgroundColor(BuildContext context) => context.colorScheme.surface;

  Widget buildContent(BuildContext context) {
    return Column(
      mainAxisSize: type == DialogType.fullScreen ? MainAxisSize.max : MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (type == DialogType.fullScreen && (smallTitle != null || onBackPressed != null)) ...[
              smallHeader(context)
            ],
            if (header != null) ...[
              if (type != DialogType.dialog) ...[
                AppDialogHeader(
                  icon: header!.$1,
                  title: header!.$2,
                  subtitle: header!.$3,
                  iconColor: iconColor,
                ),
              ],
              if (type == DialogType.dialog) ...[
                AppDialogHeaderExpanded(
                  icon: header!.$1,
                  title: header!.$2,
                  subtitle: header!.$3,
                  iconColor: iconColor,
                  onBackPressed: onBackPressed,
                )
              ]
            ]
          ],
        ),
        if (type == DialogType.fullScreen) ...[
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: contentPadding,
                    child: child,
                  ),
                ),
                if (primaryButton != null || secondaryButton != null || teritaryButton != null) stackedActionButtons,
              ],
            ),
          ),
        ],
        if (type == DialogType.bottomSheet || type == DialogType.dialog || type == DialogType.overlay)
          Column(
            children: [
              Padding(
                padding: contentPadding,
                child: child,
              ),
              if ((type == DialogType.dialog || type == DialogType.overlay) &&
                  (secondaryButton != null || primaryButton != null)) ...[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Wrap(
                        spacing: 8,
                        children: [
                          if (teritaryButton != null) teritaryButton!,
                          if (secondaryButton != null) secondaryButton!,
                          if (primaryButton != null) primaryButton!,
                        ],
                      ),
                    ],
                  ),
                )
              ],
              if (type == DialogType.bottomSheet && (secondaryButton != null || primaryButton != null)) ...[
                stackedActionButtons
              ]
            ],
          )
      ],
    );
  }

  Widget get stackedActionButtons => SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (primaryButton != null)
                SizedBox(
                  width: double.infinity,
                  child: primaryButton!,
                ),
              if (secondaryButton != null) ...[
                const SizedBox(
                  height: 8,
                ),
                SizedBox(width: double.infinity, child: secondaryButton!),
              ],
              if (teritaryButton != null) ...[
                const SizedBox(
                  height: 8,
                ),
                SizedBox(width: double.infinity, child: teritaryButton!),
              ]
            ],
          ),
        ),
      );

  Widget smallHeader(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            if (onBackPressed != null)
              Align(
                alignment: Alignment.centerLeft,
                child: AppCloseButton(
                  onPressed: onBackPressed!,
                ),
              ),
            if (smallTitle != null)
              Align(
                alignment: Alignment.center,
                child: Text(
                  smallTitle!,
                  style: context.headlineSmall,
                ),
              ),
          ],
        ),
      );

  BoxConstraints? get constraints => BoxConstraints(
      maxWidth: maxWidth ?? (type == DialogType.dialog ? 500 : double.infinity),
      maxHeight: maxHeight ?? double.infinity);
}

enum DialogType { bottomSheet, dialog, fullScreen, overlay, close }

typedef DialogHeader = (IconData, String, String?);
