import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/router/app_router.dart';

class ReferralScreen2 extends StatelessWidget {
  const ReferralScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Referral Screen 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AppRouter.rootNavigatorKey.currentContext?.pop();
          },
          child: const Text("Go to Referral Screen 2"),
        ),
      ),
    );
  }
}
