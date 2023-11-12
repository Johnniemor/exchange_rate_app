// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:exchange_rate_app/feature/all_service_screen.dart' as _i1;
import 'package:exchange_rate_app/feature/change_language/change_language_screen.dart'
    as _i2;
import 'package:exchange_rate_app/feature/exchange_rate/presentation/ex_change_rate_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AllServiceRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i1.AllServiceScreen()),
      );
    },
    ChangeLanguageRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i2.ChangeLanguageScreen()),
      );
    },
    ExChangeRateRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(child: const _i3.ExChangeRateScreen()),
      );
    },
  };
}

/// generated route for
/// [_i1.AllServiceScreen]
class AllServiceRoute extends _i4.PageRouteInfo<void> {
  const AllServiceRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AllServiceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllServiceRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChangeLanguageScreen]
class ChangeLanguageRoute extends _i4.PageRouteInfo<void> {
  const ChangeLanguageRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ChangeLanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangeLanguageRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ExChangeRateScreen]
class ExChangeRateRoute extends _i4.PageRouteInfo<void> {
  const ExChangeRateRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ExChangeRateRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExChangeRateRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
