// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paletteColorsHash() => r'04253536dc8a1f6f5ce733c481bcfd69884d3c86';

/// See also [paletteColors].
@ProviderFor(paletteColors)
final paletteColorsProvider = AutoDisposeProvider<List<Color>>.internal(
  paletteColors,
  name: r'paletteColorsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paletteColorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PaletteColorsRef = AutoDisposeProviderRef<List<Color>>;
String _$themeControllerHash() => r'7c59f51261a5c3246aa520e5f8b7b5de130dda77';

/// See also [ThemeController].
@ProviderFor(ThemeController)
final themeControllerProvider =
    AutoDisposeNotifierProvider<ThemeController, AppTheme>.internal(
  ThemeController.new,
  name: r'themeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeController = AutoDisposeNotifier<AppTheme>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
