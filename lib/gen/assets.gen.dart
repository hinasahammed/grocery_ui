/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/added_to_cart.json
  String get addedToCart => 'assets/animations/added_to_cart.json';

  /// File path: assets/animations/no_cart_item.json
  String get noCartItem => 'assets/animations/no_cart_item.json';

  /// List of all assets
  List<String> get values => [addedToCart, noCartItem];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.png');

  /// File path: assets/images/banana.png
  AssetGenImage get banana => const AssetGenImage('assets/images/banana.png');

  /// File path: assets/images/bread.png
  AssetGenImage get bread => const AssetGenImage('assets/images/bread.png');

  /// File path: assets/images/carrots.png
  AssetGenImage get carrots => const AssetGenImage('assets/images/carrots.png');

  /// File path: assets/images/chips.png
  AssetGenImage get chips => const AssetGenImage('assets/images/chips.png');

  /// File path: assets/images/grape.png
  AssetGenImage get grape => const AssetGenImage('assets/images/grape.png');

  /// File path: assets/images/onion.png
  AssetGenImage get onion => const AssetGenImage('assets/images/onion.png');

  /// File path: assets/images/pizza.png
  AssetGenImage get pizza => const AssetGenImage('assets/images/pizza.png');

  /// File path: assets/images/potato.png
  AssetGenImage get potato => const AssetGenImage('assets/images/potato.png');

  /// File path: assets/images/shampoo.png
  AssetGenImage get shampoo => const AssetGenImage('assets/images/shampoo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        apple,
        banana,
        bread,
        carrots,
        chips,
        grape,
        onion,
        pizza,
        potato,
        shampoo
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
