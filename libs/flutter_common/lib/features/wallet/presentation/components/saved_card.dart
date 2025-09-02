import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class SavedCard extends StatefulWidget {
  final String accountNumber;
  final String accountHolderName;
  final String bankName;
  final ImageProvider cardImage;
  final Widget? icon;
  final bool isDefault;
  final Function()? deletePressed;
  final Function(bool)? markAsDefaultPressed;

  const SavedCard({
    super.key,
    required this.accountNumber,
    required this.accountHolderName,
    required this.bankName,
    this.isDefault = false,
    this.deletePressed,
    this.markAsDefaultPressed,
    required this.cardImage,
    required this.icon,
  });

  @override
  State<SavedCard> createState() => _SavedPaymentMethodCardState();
}

class _SavedPaymentMethodCardState extends State<SavedCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1464748B),
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
        image: DecorationImage(
          image: widget.cardImage,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    if (widget.icon != null) ...[
                      widget.icon!,
                      const SizedBox(width: 12),
                    ],
                    Expanded(
                      child: Text(
                        widget.bankName,
                        style: context.titleLarge,
                      ),
                    ),
                    if (widget.deletePressed != null)
                      CupertinoButton(
                        minSize: 0,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: const Icon(
                          Ionicons.ellipsis_vertical,
                          color: ColorPalette.neutral60,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  context.t.nameOnCard,
                  style: context.bodyMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.accountHolderName,
                  style: context.labelMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ColorPalette.neutral99,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.accountNumber,
                    style: context.titleSmall,
                  ),
                ),
                CupertinoSwitch(value: widget.isDefault, onChanged: (value) => widget.markAsDefaultPressed?.call(value))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
