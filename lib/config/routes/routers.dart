import 'package:auto_route/auto_route.dart';
import 'routers.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{
  @override
  List<AutoRoute> get routes =>[
    AutoRoute(page: ExChangeRateRoute.page),
    AutoRoute(page: AllServiceRoute.page),
    AutoRoute(page: ChangeLanguageRoute.page),
  ];

}