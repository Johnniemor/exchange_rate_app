// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExChangeRateModel _$ExChangeRateModelFromJson(Map<String, dynamic> json) =>
    ExChangeRateModel(
      result: json['result'] as String,
      timeLastUpdateUtc: json['time_last_update_utc'] as String,
      baseCode: json['base_code'] as String,
      conversionRates: ConversionRates.fromJson(
          json['conversion_rates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExChangeRateModelToJson(ExChangeRateModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'time_last_update_utc': instance.timeLastUpdateUtc,
      'base_code': instance.baseCode,
      'conversion_rates': instance.conversionRates,
    };

ConversionRates _$ConversionRatesFromJson(Map<String, dynamic> json) =>
    ConversionRates(
      usd: (json['USD'] as num).toDouble(),
      thb: (json['THB'] as num).toDouble(),
      lak: (json['LAK'] as num).toDouble(),
      cny: (json['CNY'] as num).toDouble(),
    );

Map<String, dynamic> _$ConversionRatesToJson(ConversionRates instance) =>
    <String, dynamic>{
      'USD': instance.usd,
      'THB': instance.thb,
      'LAK': instance.lak,
      'CNY': instance.cny,
    };
