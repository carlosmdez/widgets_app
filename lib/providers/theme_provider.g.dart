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
String _$isDarkModeHash() => r'4acb52b43930d1ee592c6400fa71eab63f1e71d5';

/// See also [IsDarkMode].
@ProviderFor(IsDarkMode)
final isDarkModeProvider =
    AutoDisposeNotifierProvider<IsDarkMode, bool>.internal(
  IsDarkMode.new,
  name: r'isDarkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isDarkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsDarkMode = AutoDisposeNotifier<bool>;
String _$colorIndexSelectedHash() =>
    r'02af4e8a194d98c63b8e1ba6a8a1b525c2ec63ea';

/// See also [ColorIndexSelected].
@ProviderFor(ColorIndexSelected)
final colorIndexSelectedProvider =
    AutoDisposeNotifierProvider<ColorIndexSelected, int>.internal(
  ColorIndexSelected.new,
  name: r'colorIndexSelectedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$colorIndexSelectedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ColorIndexSelected = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
