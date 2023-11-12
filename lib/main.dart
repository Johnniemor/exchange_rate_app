import 'package:easy_localization/easy_localization.dart';
import 'package:exchange_rate_app/l10n/l10n.dart';

import 'app.dart';
import 'config/di/config_dependencies.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  await configDependencies();
    runApp(
    EasyLocalization(
      startLocale: L10n().supportLanguage[0],
      supportedLocales: L10n().supportLanguage,
      path: 'asset/l10n',
      fallbackLocale: L10n().supportLanguage[0],
      child: App(),
    ),
  );
}