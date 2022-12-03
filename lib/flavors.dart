enum Flavor {
  PROD,
  STAGING,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'Chekikeja';
      case Flavor.STAGING:
        return 'Chekikeja Staging';
      default:
        return 'title';
    }
  }

}
