import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/route_names.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.profile.name);
              },
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(RouteNames.login.name);
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
