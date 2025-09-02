import 'package:flutter/material.dart';
import 'package:rider_flutter/l10n/messages.dart';

export 'package:flutter_common/core/extensions/extensions.dart';

extension Translations on BuildContext {
  S get translate => S.of(this);
}

extension WidgetListX on List<Widget> {
  // separated
  List<Widget> separated(Widget separator) {
    if (isEmpty) return [];
    return List<Widget>.from(expand((element) => [element, separator])).sublist(0, length * 2 - 1);
  }
}

extension WidgetIterableX on Iterable<Widget> {
  // separated
  List<Widget> separated(Widget separator) {
    if (isEmpty) return [];
    return List<Widget>.from(expand((element) => [element, separator])).sublist(0, length * 2 - 1);
  }
}
