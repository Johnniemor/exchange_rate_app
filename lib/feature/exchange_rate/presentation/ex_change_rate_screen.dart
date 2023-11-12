import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:exchange_rate_app/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/di/config_dependencies.dart';
import 'cubit/ex_change_rate_cubit.dart';
import 'widget/ex_change_rate_failure.dart';
import 'widget/ex_change_rate_loading.dart';
import 'widget/ex_change_rate_success.dart';

@RoutePage()
class ExChangeRateScreen extends StatelessWidget implements AutoRouteWrapper {
  const ExChangeRateScreen({super.key});

    @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ExChangeRateCubit>()..initializeFetchMethod(),
        ),
      
      ],
      child: this,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title:  Text(
          LocaleKeys.exchangeRateinUs.tr()
        ),
      ),
      body: BlocBuilder<ExChangeRateCubit, ExChangeRateState>(
        builder: (context, state) {
          return state.when(
            initial: () =>    const ExChangeRateLoading(),
            loading: () => const ExChangeRateLoading(),
            success: (exChangeRateEntity) =>   ExChangeRateSuccess(exChangeRateEntity: exChangeRateEntity,),
            failure: (message) => const ExChangeRateFailure(message: 'Have something worng!!',),
          );
        },
      ),
    );
  }
  }

 

