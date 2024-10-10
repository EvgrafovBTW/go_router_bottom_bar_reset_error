import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home screen'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CommonRoutes.multiacc.path);
            },
            icon: const Icon(Icons.cabin),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, _) => const SizedBox(height: 50),
        itemCount: 100,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            context.push(CommonRoutes.product.path);
          },
          child: Container(
            height: 100,
            color: Colors.yellow,
            child: GestureDetector(
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
