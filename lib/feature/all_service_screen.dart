import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:exchange_rate_app/config/routes/routers.dart';
import 'package:exchange_rate_app/config/routes/routers.gr.dart';
import 'package:exchange_rate_app/feature/widget/custom_service_list.dart';
import 'package:exchange_rate_app/l10n/locale_keys.g.dart';
import '../config/di/config_dependencies.dart';
import 'exchange_rate/presentation/cubit/ex_change_rate_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AllServiceScreen extends StatelessWidget implements AutoRouteWrapper {
  const AllServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title:  Text(LocaleKeys.allService.tr()),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomServiceList(icon: Icons.currency_exchange, title: LocaleKeys.exchabgeRate.tr(), subtitle: LocaleKeys.viewBuyRate.tr(), onTap: () => context.read<ExChangeRateCubit>().fetchExChangeRate()),
              CustomServiceList(icon: Icons.language, title: LocaleKeys.changeLanguage.tr(), subtitle: LocaleKeys.lo_us.tr(), onTap: () => getIt<AppRouter>().push(const ChangeLanguageRoute())),
            ],
          ),
        ));
  }
  
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => getIt<ExChangeRateCubit>(), child: this,);
  }


}
