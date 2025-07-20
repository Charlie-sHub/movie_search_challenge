import 'package:auto_route/auto_route.dart';
import 'package:movie_search_challenge/views/core/routes/router.gr.dart';

/// App's router
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SearchRoute.page, path: '/'),
    AutoRoute(page: DetailsRoute.page),
  ];
}
