import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_example/paths.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, _) => const SizedBox(height: 50),
      itemCount: 100,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          context.push(CommonRoutes.product.path);
        },
        child: Container(
          height: 88,
          color: Colors.green,
          child: Center(child: Text(index.toString())),
        ),
      ),
    );
  }
}
