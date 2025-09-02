import 'package:flutter/material.dart';
import 'package:flutter_common/l10n/messages.dart';
import 'package:intl/intl.dart';

export 'datetime.dart';
export 'distance.dart';

extension AppSize on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
  FocusScopeNode get focusScope => FocusScope.of(this);
  ScaffoldState get scaffold => Scaffold.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  Size get size => MediaQuery.of(this).size;
}

extension AppStyle on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;
  // display
  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;
  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;

  // title
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get titleTextStyle => Theme.of(this).appBarTheme.titleTextStyle;

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
}

extension AppColor<T> on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get outline => Theme.of(this).colorScheme.outline;
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get secondary => Theme.of(this).colorScheme.secondary;
  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;
  Color get secondaryContainer => Theme.of(this).colorScheme.secondaryContainer;
  Color get dividerColor => Theme.of(this).dividerColor;
}

extension BottomNavigation<T> on BuildContext {
  IconThemeData? get unselectedIconTheme => Theme.of(this).bottomNavigationBarTheme.unselectedIconTheme;
  IconThemeData? get selectedIconTheme => Theme.of(this).bottomNavigationBarTheme.selectedIconTheme;
  BottomNavigationBarThemeData get bottomNavigationBarTheme => Theme.of(this).bottomNavigationBarTheme;
}

extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}

extension DoubleX on double {
  String formatCurrency(String currency) => NumberFormat.simpleCurrency(name: currency).format(this);
}

extension StringX on String {
  String get formatPhoneNumberLegacy =>
      replaceAllMapped(RegExp(r'(\d{3})(\d{3})(\d{4})'), (match) => '+(${match[1]}) ${match[2]}-${match[3]}');

  String formatPhoneNumber(String countryCode) => replaceAllMapped(
      RegExp(r'(\d{3})(\d{3})(\d{4})'), (match) => '+${countryCode} (${match[1]}) ${match[2]}-${match[3]}');
}

extension Translator on BuildContext {
  S get t => S.of(this);

  String convertSecondsToHumanReadable(int seconds) {
    if (seconds / 3600 >= 1) {
      return '${(seconds / 3600).floor()}h';
    } else if (seconds / 60 >= 1) {
      return '${(seconds / 60).floor()}m';
    } else {
      return '${seconds.floor()}s';
    }
  }
}

extension WidgetStateHelpers on Iterable<WidgetState> {
  bool get isHovered => contains(WidgetState.hovered);
  bool get isFocused => contains(WidgetState.focused);
  bool get isPressed => contains(WidgetState.pressed);
  bool get isDragged => contains(WidgetState.dragged);
  bool get isSelected => contains(WidgetState.selected);
  bool get isScrolledUnder => contains(WidgetState.scrolledUnder);
  bool get isDisabled => contains(WidgetState.disabled);
  bool get isError => contains(WidgetState.error);
}

extension IterableExtensions on Iterable {
  bool containsAny(Iterable<Object?> other) => other.any((e) => contains(e));
}
