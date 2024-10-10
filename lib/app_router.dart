import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/app.dart';
import 'package:router_example/multiacc_screen.dart';
import 'package:router_example/pages/catalogue_page.dart';
import 'package:router_example/pages/home_page.dart';
import 'package:router_example/pages/profile_page.dart';
import 'package:router_example/paths.dart';
import 'package:router_example/product_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

List<GlobalKey<NavigatorState>> bottomBarKeyChain = [
  _homeRoutesNavigatorKey,
  _catalogueRoutesNavigatorKey,
  _profileRoutesNavigatorKey,
];

class AppRouter {
  AppRouter();

  GoRouter get router => _router;

  GoRouter get _router => GoRouter(
        navigatorKey: rootNavigatorKey,
        routes: [
          _bottomNavigationShellRoute,
          ..._commonRoutes,
        ],
        initialLocation: HomeRoutes.initial.path,
      );
}

final _commonRoutes = [
  GoRoute(
    parentNavigatorKey: rootNavigatorKey,
    path: CommonRoutes.multiacc.path,
    builder: (context, state) => MultiaccSreen(key: state.pageKey),
  ),
];

final _bottomNavigationShellRoute = StatefulShellRoute.indexedStack(
  branches: [
    _homeBranch,
    _catalogueBranch,
    _profileBranch,
  ],
  builder: (context, state, navigationShell) => App(
    key: state.pageKey,
    navigationShell: navigationShell,
  ),
);

final _homeBranch = StatefulShellBranch(
  navigatorKey: _homeRoutesNavigatorKey,
  initialLocation: HomeRoutes.initial.path,
  routes: [
    GoRoute(
      path: HomeRoutes.initial.path,
      builder: (context, state) => HomePage(key: state.pageKey),
    ),
    GoRoute(
      path: CommonRoutes.product.path,
      builder: (context, state) => ProductScreen(key: state.pageKey),
    ),
  ],
);

final _catalogueBranch = StatefulShellBranch(
  navigatorKey: _catalogueRoutesNavigatorKey,
  initialLocation: CatalogueRoutes.initial.path,
  routes: [
    GoRoute(
      path: CatalogueRoutes.initial.path,
      builder: (context, state) => CataloguePage(key: state.pageKey),
    ),
    GoRoute(
      path: CommonRoutes.product.path,
      builder: (context, state) => ProductScreen(key: state.pageKey),
    ),
  ],
);

final _profileBranch = StatefulShellBranch(
  navigatorKey: _profileRoutesNavigatorKey,
  initialLocation: ProfileRoutes.initial.path,
  routes: [
    GoRoute(
      path: ProfileRoutes.initial.path,
      builder: (context, state) => ProfilePage(key: state.pageKey),
    ),
    GoRoute(
      path: CommonRoutes.product.path,
      builder: (context, state) => ProductScreen(key: state.pageKey),
    ),
  ],
);

final _homeRoutesNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'homeBranch',
);
final _catalogueRoutesNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'catalogueBranch',
);
final _profileRoutesNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'profileBranch',
);
