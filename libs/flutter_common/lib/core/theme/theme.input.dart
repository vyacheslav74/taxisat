part of 'theme.dart';

InputDecorationTheme inputTheme(String fontPrimary, String fontSecondary) => InputDecorationTheme(
      filled: true,
      fillColor: ColorPalette.primary99,
      iconColor: ColorPalette.neutral70,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      prefixIconColor: ColorPalette.neutral70,
      suffixIconColor: ColorPalette.neutral70,
      hintStyle: textTheme(fontPrimary, fontSecondary).bodyLarge,
      alignLabelWithHint: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorPalette.primary95,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorPalette.primary95,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorPalette.primary50,
        ),
      ),
    );
