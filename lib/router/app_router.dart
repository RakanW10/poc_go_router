import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_go_router/router/route_names.dart';
import 'package:poc_go_router/screen/home_tabs.dart';
import 'package:poc_go_router/screen/login_screen.dart';
import 'package:poc_go_router/screen/market_screen.dart';
import 'package:poc_go_router/screen/more_screen.dart';
import 'package:poc_go_router/screen/profile_screen.dart';
import 'package:poc_go_router/screen/wallet_screen.dart';

import '../screen/home_screen.dart';

class AppRouter {
  AppRouter._();
  static GoRouter routerConfig() {
    return GoRouter(
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: RouteNames.login.name,
          path: RouteNames.login.path,
          pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => HomeTabs(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: RouteNames.home.name,
                  path: RouteNames.home.path,
                  pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: RouteNames.market.name,
                  path: RouteNames.market.path,
                  pageBuilder: (context, state) => const MaterialPage(child: MarketScreen()),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: RouteNames.wallet.name,
                  path: RouteNames.wallet.path,
                  pageBuilder: (context, state) => const MaterialPage(child: WalletScreen()),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: RouteNames.more.name,
                  path: RouteNames.more.path,
                  pageBuilder: (context, state) => const MaterialPage(child: MoreScreen()),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: RouteNames.profile.name,
          path: RouteNames.profile.path,
          pageBuilder: (context, state) => const MaterialPage(child: ProfileScreen()),
        ),
      ],
    );
  }
}
