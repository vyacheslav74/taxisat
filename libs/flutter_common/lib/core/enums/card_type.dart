import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/gen/assets.gen.dart';

enum CardType {
  visa,
  mastercard,
  amex,
  discover,
  jcb,
  diners,
  maestro,
  unionpay,
  elo,
  hipercard,
  hiper,
  unknown
}

extension CardTypeX on CardType {
  AssetGenImage get icon {
    switch (this) {
      case CardType.visa:
        return Assets.images.visa;
      case CardType.mastercard:
        return Assets.images.mastercard;

      default:
        throw Exception('Card type not supported');
    }
  }

  String title(BuildContext context) {
    switch (this) {
      case CardType.visa:
        return context.t.visa;
      case CardType.mastercard:
        return context.t.mastercard;

      default:
        throw Exception('Card type not supported');
    }
  }
}
