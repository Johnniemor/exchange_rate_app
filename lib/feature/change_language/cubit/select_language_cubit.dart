// ignore_for_file: use_build_context_synchronously

import 'package:easy_localization/easy_localization.dart';
import 'package:exchange_rate_app/config/di/config_dependencies.dart';
import 'package:exchange_rate_app/config/routes/routers.dart';
import 'package:exchange_rate_app/config/routes/routers.gr.dart';
import 'package:exchange_rate_app/core/constant/languages/languages.dart';
import 'package:exchange_rate_app/core/constant/message/key_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'select_language_cubit.freezed.dart';
part 'select_language_state.dart';

@Injectable()
class SelectLanguageCubit extends Cubit<SelectLanguageState> {
  SelectLanguageCubit()
      : super(const SelectLanguageState.initial(languages: Languages.lao));

  void chooseLanguage(Languages language) {
    emit(SelectLanguageState.initial(languages: language));
  }

  Future<void> changeLanguages(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (state.languages == Languages.lao) {
      context.setLocale(const Locale('lo'));
    } else {
      context.setLocale(const Locale('en'));
    }

    await prefs.setString(KeyLocalStorage.selectedLanguage, "lo");

    getIt<AppRouter>().push(const AllServiceRoute());
  }
}
