/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/booking.svg
  String get booking => 'assets/icon/booking.svg';

  /// File path: assets/icon/calendar.svg
  String get calendar => 'assets/icon/calendar.svg';

  /// File path: assets/icon/chevron-down.svg
  String get chevronDown => 'assets/icon/chevron-down.svg';

  /// File path: assets/icon/home.svg
  String get home => 'assets/icon/home.svg';

  /// File path: assets/icon/like.svg
  String get like => 'assets/icon/like.svg';

  /// File path: assets/icon/location.svg
  String get location => 'assets/icon/location.svg';

  /// File path: assets/icon/map.svg
  String get map => 'assets/icon/map.svg';

  /// File path: assets/icon/notification.svg
  String get notification => 'assets/icon/notification.svg';

  /// File path: assets/icon/pin.svg
  String get pin => 'assets/icon/pin.svg';

  /// File path: assets/icon/pin_png.png
  AssetGenImage get pinPng => const AssetGenImage('assets/icon/pin_png.png');

  /// File path: assets/icon/profile.svg
  String get profile => 'assets/icon/profile.svg';

  /// File path: assets/icon/wishlist.svg
  String get wishlist => 'assets/icon/wishlist.svg';

  /// List of all assets
  List<dynamic> get values => [
        booking,
        calendar,
        chevronDown,
        home,
        like,
        location,
        map,
        notification,
        pin,
        pinPng,
        profile,
        wishlist
      ];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/gallery1.png
  AssetGenImage get gallery1 =>
      const AssetGenImage('assets/image/gallery1.png');

  /// File path: assets/image/gallery2.png
  AssetGenImage get gallery2 =>
      const AssetGenImage('assets/image/gallery2.png');

  /// File path: assets/image/gallery3.png
  AssetGenImage get gallery3 =>
      const AssetGenImage('assets/image/gallery3.png');

  /// File path: assets/image/hotel-image.png
  AssetGenImage get hotelImage =>
      const AssetGenImage('assets/image/hotel-image.png');

  /// File path: assets/image/photo.png
  AssetGenImage get photo => const AssetGenImage('assets/image/photo.png');

  /// File path: assets/image/sign-in.png
  AssetGenImage get signIn => const AssetGenImage('assets/image/sign-in.png');

  /// File path: assets/image/thumbnail1.png
  AssetGenImage get thumbnail1 =>
      const AssetGenImage('assets/image/thumbnail1.png');

  /// File path: assets/image/thumbnail2.png
  AssetGenImage get thumbnail2 =>
      const AssetGenImage('assets/image/thumbnail2.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        gallery1,
        gallery2,
        gallery3,
        hotelImage,
        photo,
        signIn,
        thumbnail1,
        thumbnail2
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImageGen image = $AssetsImageGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
