import 'package:flutter/material.dart';
import 'package:poc_go_router/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) => Router.withConfig(
                config: AppRouter.referralConfigs,
              ),
            );
          },
          child: const Text("open sheet"),
        ),
      ),
    );
  }
}
