import 'package:flutter/material.dart';

class MobileLayoutDelegate extends MultiChildLayoutDelegate {
  static const String mapLayoutId = 'map';
  static const String cardLayoutId = 'card';
  static const String actionButtonId = 'action';
  static const String myLocationButtonId = 'myLocation';

  MobileLayoutDelegate();

  @override
  void performLayout(Size size) {
    final cardSize = layoutChild(
      cardLayoutId,
      BoxConstraints(
        maxWidth: size.width,
        maxHeight: size.height,
      ),
    );
    if (cardSize.height < size.height) {
      positionChild(
        cardLayoutId,
        Offset(0, size.height - cardSize.height),
      );
      layoutChild(
        mapLayoutId,
        BoxConstraints(
          maxWidth: size.width,
          maxHeight: size.height - cardSize.height + 20,
        ),
      );
      positionChild(mapLayoutId, Offset.zero);
      layoutChild(actionButtonId, const BoxConstraints());
      positionChild(
        actionButtonId,
        const Offset(
          16,
          16,
        ),
      );
      final myLocationSize = layoutChild(myLocationButtonId, const BoxConstraints());
      positionChild(
        myLocationButtonId,
        Offset(
          size.width - myLocationSize.width,
          size.height - cardSize.height - myLocationSize.height,
        ),
      );
    } else {
      layoutChild(
        actionButtonId,
        const BoxConstraints(
          maxWidth: 0,
          maxHeight: 0,
        ),
      );
      positionChild(
        actionButtonId,
        const Offset(
          16,
          16,
        ),
      );
      layoutChild(
          myLocationButtonId,
          const BoxConstraints(
            maxWidth: 0,
            maxHeight: 0,
          ));
      positionChild(
        myLocationButtonId,
        Offset(size.width, size.height),
      );
      layoutChild(
        mapLayoutId,
        const BoxConstraints(
          maxWidth: 0,
          maxHeight: 0,
        ),
      );
      positionChild(mapLayoutId, Offset.zero);

      positionChild(cardLayoutId, Offset.zero);
    }
  }

  @override
  bool shouldRelayout(MobileLayoutDelegate oldDelegate) {
    return true;
  }
}
