// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/garden.svg
  String get garden => 'assets/icons/garden.svg';

  /// File path: assets/icons/greenleaf.svg
  String get greenleaf => 'assets/icons/greenleaf.svg';

  /// File path: assets/icons/key.svg
  String get key => 'assets/icons/key.svg';

  /// File path: assets/icons/mobile.svg
  String get mobile => 'assets/icons/mobile.svg';

  /// File path: assets/icons/offbook.svg
  String get offbook => 'assets/icons/offbook.svg';

  /// File path: assets/icons/offhome.svg
  String get offhome => 'assets/icons/offhome.svg';

  /// File path: assets/icons/offprofile.svg
  String get offprofile => 'assets/icons/offprofile.svg';

  /// File path: assets/icons/offshop.svg
  String get offshop => 'assets/icons/offshop.svg';

  /// File path: assets/icons/onbook.svg
  String get onbook => 'assets/icons/onbook.svg';

  /// File path: assets/icons/onhome.svg
  String get onhome => 'assets/icons/onhome.svg';

  /// File path: assets/icons/onprofile.svg
  String get onprofile => 'assets/icons/onprofile.svg';

  /// File path: assets/icons/onshop.svg
  String get onshop => 'assets/icons/onshop.svg';

  /// File path: assets/icons/plants.svg
  String get plants => 'assets/icons/plants.svg';

  /// File path: assets/icons/profile.svg
  String get profile => 'assets/icons/profile.svg';

  /// File path: assets/icons/sms.svg
  String get sms => 'assets/icons/sms.svg';

  /// File path: assets/icons/whiteleaf.svg
  String get whiteleaf => 'assets/icons/whiteleaf.svg';

  /// List of all assets
  List<String> get values => [
    garden,
    greenleaf,
    key,
    mobile,
    offbook,
    offhome,
    offprofile,
    offshop,
    onbook,
    onhome,
    onprofile,
    onshop,
    plants,
    profile,
    sms,
    whiteleaf,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/background1.png
  AssetGenImage get background1 =>
      const AssetGenImage('assets/images/background1.png');

  /// File path: assets/images/barg.png
  AssetGenImage get barg => const AssetGenImage('assets/images/barg.png');

  /// File path: assets/images/garden.png
  AssetGenImage get garden => const AssetGenImage('assets/images/garden.png');

  /// File path: assets/images/kaktus.png
  AssetGenImage get kaktus => const AssetGenImage('assets/images/kaktus.png');

  /// File path: assets/images/qorashagzoda.png
  AssetGenImage get qorashagzoda =>
      const AssetGenImage('assets/images/qorashagzoda.png');

  /// File path: assets/images/redkaktus.png
  AssetGenImage get redkaktus =>
      const AssetGenImage('assets/images/redkaktus.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    avatar,
    background,
    background1,
    barg,
    garden,
    kaktus,
    qorashagzoda,
    redkaktus,
  ];
}

abstract final class Assets {
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
