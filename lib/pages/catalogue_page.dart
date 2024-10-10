import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/paths.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, _) => const SizedBox(height: 100),
      itemCount: 100,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          context.push(CommonRoutes.product.path);
        },
        child: Container(
          height: 100,
          color: Colors.red,
          child: Center(child: Text(index.toString())),
        ),
      ),
    );
  }
}
