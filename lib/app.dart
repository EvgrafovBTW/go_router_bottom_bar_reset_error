import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/restarter.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (value) {
          widget.navigationShell.goBranch(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '1',
          ),
          BottomNavigationBarItem(
            label: '2',
            icon: Icon(Icons.abc),
          ),
          BottomNavigationBarItem(
            label: '3',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
