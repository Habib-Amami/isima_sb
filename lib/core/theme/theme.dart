import "package:flutter/material.dart";

class AppTheme {
  const AppTheme();

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2a638a),
      surfaceTint: Color(0xff2a638a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcbe6ff),
      onPrimaryContainer: Color(0xff001e31),
      secondary: Color(0xff50606f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd4e4f6),
      onSecondaryContainer: Color(0xff0d1d2a),
      tertiary: Color(0xff66587b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffecdcff),
      onTertiaryContainer: Color(0xff211634),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff42474d),
      outline: Color(0xff72787e),
      outlineVariant: Color(0xffc1c7ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff98ccf9),
      primaryFixed: Color(0xffcbe6ff),
      onPrimaryFixed: Color(0xff001e31),
      primaryFixedDim: Color(0xff98ccf9),
      onPrimaryFixedVariant: Color(0xff034b71),
      secondaryFixed: Color(0xffd4e4f6),
      onSecondaryFixed: Color(0xff0d1d2a),
      secondaryFixedDim: Color(0xffb8c8d9),
      onSecondaryFixedVariant: Color(0xff394856),
      tertiaryFixed: Color(0xffecdcff),
      onTertiaryFixed: Color(0xff211634),
      tertiaryFixedDim: Color(0xffd0bfe7),
      onTertiaryFixedVariant: Color(0xff4e4162),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e3e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff98ccf9),
      surfaceTint: Color(0xff98ccf9),
      onPrimary: Color(0xff003350),
      primaryContainer: Color(0xff034b71),
      onPrimaryContainer: Color(0xffcbe6ff),
      secondary: Color(0xffb8c8d9),
      onSecondary: Color(0xff22323f),
      secondaryContainer: Color(0xff394856),
      onSecondaryContainer: Color(0xffd4e4f6),
      tertiary: Color(0xffd0bfe7),
      onTertiary: Color(0xff372b4a),
      tertiaryContainer: Color(0xff4e4162),
      onTertiaryContainer: Color(0xffecdcff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101417),
      onSurface: Color(0xffe0e3e8),
      onSurfaceVariant: Color(0xffc1c7ce),
      outline: Color(0xff8c9198),
      outlineVariant: Color(0xff42474d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inversePrimary: Color(0xff2a638a),
      primaryFixed: Color(0xffcbe6ff),
      onPrimaryFixed: Color(0xff001e31),
      primaryFixedDim: Color(0xff98ccf9),
      onPrimaryFixedVariant: Color(0xff034b71),
      secondaryFixed: Color(0xffd4e4f6),
      onSecondaryFixed: Color(0xff0d1d2a),
      secondaryFixedDim: Color(0xffb8c8d9),
      onSecondaryFixedVariant: Color(0xff394856),
      tertiaryFixed: Color(0xffecdcff),
      onTertiaryFixed: Color(0xff211634),
      tertiaryFixedDim: Color(0xffd0bfe7),
      onTertiaryFixedVariant: Color(0xff4e4162),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff363a3e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );
}
