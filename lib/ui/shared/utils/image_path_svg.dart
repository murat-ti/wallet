class SVGImagePaths {
  static SVGImagePaths? _instance;
  static SVGImagePaths get instance {
    _instance ??= SVGImagePaths._init();
    return _instance!;
  }

  SVGImagePaths._init();

  String get audFlagSvg => toFlagSvg('aud');
  String get nzdFlagSvg => toFlagSvg('nzd');
  String get sgdFlagSvg => toFlagSvg('sgd');

  String get copyIconSvg => toIconSvg('copy');
  String get unknownSvg => toIconSvg('unknown');

  String toFlagSvg(String name) => 'assets/svg/flags/$name.svg';
  String toIconSvg(String name) => 'assets/svg/icons/$name.svg';
}