import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:exchange_rate_app/core/constant/languages/languages.dart';
import 'package:exchange_rate_app/feature/change_language/cubit/select_language_cubit.dart';
import 'package:exchange_rate_app/feature/change_language/widget/custom_button.dart';
import 'package:exchange_rate_app/feature/change_language/widget/custom_radio_listile.dart';
import 'package:exchange_rate_app/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



@RoutePage()
class ChangeLanguageScreen extends StatelessWidget implements AutoRouteWrapper {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title:  Text(LocaleKeys.changeLanguage.tr()),
        ),
      body: BlocBuilder<SelectLanguageCubit, SelectLanguageState>(
        builder: (context, state) {
          return SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                CustomRadioLisTile(
                  title: LocaleKeys.lo.tr(),
                  languages: state.languages,
                  value: Languages.lao,
                  onChange: (Languages? value) {
                    BlocProvider.of<SelectLanguageCubit>(context).chooseLanguage(value!);
                  },
                ),
                const SizedBox(height: 10),
                CustomRadioLisTile(
                  title: LocaleKeys.us.tr(),
                  languages: state.languages,
                  value: Languages.english,
                  onChange: (Languages? value) {
                    BlocProvider.of<SelectLanguageCubit>(context).chooseLanguage(value!);
                  },
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: CustomButton(
                      title: LocaleKeys.changeLanguage.tr(),
                      onPressed: () {
                        BlocProvider.of<SelectLanguageCubit>(context).changeLanguages(context);
                      }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectLanguageCubit(),
      child: this,
    );
  }
}
