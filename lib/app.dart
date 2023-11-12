import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'config/di/config_dependencies.dart';
import 'config/routes/routers.dart';
import 'config/routes/routers.gr.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final _appRouter = getIt<AppRouter>();
   App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
         routerDelegate: _appRouter.delegate(
        deepLinkBuilder: (_) => const DeepLink([
          PageRouteInfo(AllServiceRoute.name),
        ]),
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}