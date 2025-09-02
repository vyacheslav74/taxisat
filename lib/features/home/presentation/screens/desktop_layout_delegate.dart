import 'package:flutter/material.dart';
import 'package:rider_flutter/config/env.dart';

class DesktopLayoutDelegate extends MultiChildLayoutDelegate {
  static const String mapLayoutId = 'map';
  static const String cardLayoutId = 'card';
  static const String myLocationButtonId = 'myLocation';

  DesktopLayoutDelegate();

  @override
  void performLayout(Size size) {
    final cardSize = layoutChild(
      cardLayoutId,
      BoxConstraints(
        maxWidth: 400,
        maxHeight: size.height - Env.desktopNavigationBarHeight,
      ),
    );
    if (cardSize.height < (size.height - Env.desktopNavigationBarHeight)) {
      positionChild(
        cardLayoutId,
        Offset(
          size.width - 400,
          ((size.height - cardSize.height) / 2),
        ),
      );
    } else {
      positionChild(
        cardLayoutId,
        Offset(
          size.width - 400,
          Env.desktopNavigationBarHeight,
        ),
      );
    }
    layoutChild(
      mapLayoutId,
      BoxConstraints(
        maxWidth: size.width - 400,
        maxHeight: size.height,
      ),
    );
    positionChild(mapLayoutId, Offset.zero);
    final myLocationSize = layoutChild(
      myLocationButtonId,
      const BoxConstraints(),
    );
    positionChild(
      myLocationButtonId,
      Offset(
        size.width - 400 - myLocationSize.width,
        size.height - myLocationSize.height,
      ),
    );
  }

  @override
  bool shouldRelayout(DesktopLayoutDelegate oldDelegate) {
    return true;
  }
}
