part of 'theme.dart';

InputDecorationTheme inputThemeDark(String fontPrimary, String fontSecondary) =>
    inputTheme(fontPrimary, fontSecondary).copyWith(
      hintStyle: inputTheme(fontPrimary, fontSecondary)
          .hintStyle
          ?.copyWith(color: darkColorScheme.onSurfaceVariant),
    );
