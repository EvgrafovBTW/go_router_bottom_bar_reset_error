import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/app_router.dart';
import 'package:router_example/restarter.dart';

final getIt = GetIt.I;
Key restartKey = UniqueKey();

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final GoRouter _router;
  @override
  void initState() {
    super.initState();
    _router = AppRouter().router;
    getIt.registerLazySingleton(() => AppRouter());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData.light(useMaterial3: true).copyWith(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.pink,
      )),
    );
  }
}
