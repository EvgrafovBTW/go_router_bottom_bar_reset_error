import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/paths.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('product screen'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CommonRoutes.multiacc.path).then((value) {
                GoRouter.of(context).refresh();
              });
            },
            icon: const Icon(Icons.cabin),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, _) => const SizedBox(height: 50),
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          height: 92,
          color: Colors.lime,
          child: GestureDetector(
            child: Center(
              child: Text(index.toString()),
            ),
          ),
        ),
      ),
    );
  }
}
