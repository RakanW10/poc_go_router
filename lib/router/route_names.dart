enum RouteNames {
  login(
    name: 'login',
    path: '/',
  ),
  home(
    name: 'home',
    path: '/home',
  ),
  market(
    name: 'market',
    path: '/market',
  ),
  wallet(
    name: 'wallet',
    path: '/wallet',
  ),
  more(
    name: 'more',
    path: '/more',
  ),
  profile(
    name: 'profile',
    path: '/profile',
  ),
  referral1(
    name: 'referral1',
    path: '/referral1',
  ),
  referral2(
    name: 'referral2',
    path: '/referral2',
  );

  final String name;
  final String path;

  const RouteNames({
    required this.name,
    required this.path,
  });
}
