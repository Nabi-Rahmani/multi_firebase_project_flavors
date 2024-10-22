enum Flavor {
  dev,
  stg,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Fmulti Dev';
      case Flavor.stg:
        return 'Fmulti Stg';
      case Flavor.prod:
        return 'Fmulti';
      default:
        return 'title';
    }
  }
}

Flavor getFlavor() {
  if (F.appFlavor == null) {
    throw Exception('Flavor not set');
  }
  return F.appFlavor!;
}
