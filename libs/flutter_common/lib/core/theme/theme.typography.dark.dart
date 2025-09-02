part of 'theme.dart';

TextTheme textThemeDark(String fontPrimary, String fontSecondary) =>
    textTheme(fontPrimary, fontSecondary).copyWith(
      titleLarge: textTheme(fontPrimary, fontSecondary).titleLarge?.copyWith(
            color: darkColorScheme.onSurface,
          ),
      headlineSmall:
          textTheme(fontPrimary, fontSecondary).headlineSmall?.copyWith(
                color: darkColorScheme.onSurface,
              ),
    );
