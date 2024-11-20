import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/router/route_names.dart';

class ReferralScreen1 extends StatelessWidget {
  const ReferralScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Referral Screen 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pushNamed(RouteNames.referral2.name);
          },
          child: const Text("Go to Referral Screen 2"),
        ),
      ),
    );
  }
}
