enum HomeRoutes {
  initial(path: '/');

  final String path;
  const HomeRoutes({
    required this.path,
  });
}

enum CatalogueRoutes {
  initial(path: '/catalogue');

  final String path;
  const CatalogueRoutes({
    required this.path,
  });
}

enum ProfileRoutes {
  initial(path: '/profile');

  final String path;
  const ProfileRoutes({
    required this.path,
  });
}

enum CommonRoutes {
  multiacc(path: '/multiacc'),
  product(path: '/product');

  final String path;
  const CommonRoutes({
    required this.path,
  });
}
