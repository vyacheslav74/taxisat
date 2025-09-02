import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/entities/service.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class ServiceItem extends StatelessWidget {
  final ServiceEntity entity;
  final String currency;
  final bool isSelected;
  final Function() onPressed;

  const ServiceItem({
    super.key,
    required this.entity,
    required this.isSelected,
    required this.onPressed,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      minSize: 0,
      padding: EdgeInsets.zero,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: entity.imageUrl,
              width: 48,
              height: 48,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        entity.name,
                        style: context.labelLarge,
                      ),
                      if (entity.capacity != null) ...[
                        const SizedBox(width: 4),
                        const Icon(
                          Ionicons.person,
                          color: ColorPalette.neutral70,
                          size: 16,
                        ),
                        Transform.translate(
                          offset: const Offset(0, -3),
                          child: Text(
                            entity.capacity.toString(),
                            style: context.bodySmall,
                          ),
                        ),
                      ]
                    ],
                  ),
                  if (entity.description != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      entity.description!,
                      style: context.bodyMedium?.copyWith(
                        color: ColorPalette.neutralVariant50,
                      ),
                    )
                  ]
                ],
              ),
            ),
            if (entity.priceAfterCouponApplied == null)
              Text(
                entity.price.formatCurrency(currency),
                style: context.titleSmall?.copyWith(
                  color: ColorPalette.primary40,
                ),
              ),
            if (entity.priceAfterCouponApplied != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    entity.price.formatCurrency(currency),
                    style: context.titleSmall?.copyWith(
                      color: ColorPalette.primary40,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    (entity.priceAfterCouponApplied ?? 0).formatCurrency(currency),
                    style: context.titleSmall?.copyWith(
                      color: ColorPalette.primary40,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Color get borderColor => isSelected ? ColorPalette.primary40 : ColorPalette.primary99;

  Color get backgroundColor => isSelected ? ColorPalette.primary99 : ColorPalette.neutralVariant99;
}
