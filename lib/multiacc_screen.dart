import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/app_router.dart';
import 'package:router_example/main.dart';
import 'package:router_example/paths.dart';
import 'package:router_example/restarter.dart';

class MultiaccSreen extends StatelessWidget {
  const MultiaccSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('reset screen')),
      body: Placeholder(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              for (GlobalKey<NavigatorState> key in bottomBarKeyChain) {
                if (key.currentState == null) {
                  continue;
                }
                if (key.currentState!.canPop()) {
                  try {
                    key.currentState?.popUntil((route) => route.isFirst);
                  } catch (e) {
                    continue;
                  }
                }
              }
              // RestartWidget.restartApp(context);

              // context.pop();
            },
            child: const Text('reset'),
          ),
        ),
      ),
    );
  }
}
