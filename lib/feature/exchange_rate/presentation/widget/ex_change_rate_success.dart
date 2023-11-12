import 'package:easy_localization/easy_localization.dart';
import 'package:exchange_rate_app/l10n/locale_keys.g.dart';

import '../../../../core/constant/image/image_constant.dart';
import '../../domain/entities/exchange_rate_entity.dart';
import 'custom_currency_list.dart';
import 'custom_header.dart';
import 'custom_latest_time_box.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExChangeRateSuccess extends StatelessWidget {
  final ExChangeRateEntity exChangeRateEntity;
  const ExChangeRateSuccess({super.key, required this.exChangeRateEntity});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomLatestTimeBox(
              title: LocaleKeys.latestUpdate.tr(),
              subtitle: exChangeRateEntity.timeLastUpdateUtc),
          const SizedBox(height: 15),
           CustomHeader(title: LocaleKeys.currency.tr(), subtitle: LocaleKeys.rateBuy.tr()),
          const Divider(height: 5, color: Colors.white),
          const SizedBox(height: 5),
          CustomCurrencyList(
              image: const AssetImage(laoCurrency),
              title: "LAK",
              rating:
                  "${NumberFormat("#,##0.00").format(exChangeRateEntity.conversionRates.lak)} KIP"),
          CustomCurrencyList(
              image: const AssetImage(thaiCurrency),
              title: "THB",
              rating:
                  "${NumberFormat("#,##0.00").format(exChangeRateEntity.conversionRates.thb)} THB"),
          CustomCurrencyList(
              image: const AssetImage(chinaCurrency),
              title: "CNY",
              rating:
                  "${NumberFormat("#,##0.00").format(exChangeRateEntity.conversionRates.cny)} CNY"),
        ],
      ),
    );
  }
}
