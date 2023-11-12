

// ignore_for_file: must_be_immutable, overridden_fields

import 'dart:convert';

import 'package:exchange_rate_app/feature/exchange_rate/domain/entities/conversion_rates_entity.dart';
import 'package:exchange_rate_app/feature/exchange_rate/domain/entities/exchange_rate_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_rate_model.g.dart';

ExChangeRateModel exChangeRateModelFromJson(String str) => ExChangeRateModel.fromJson(json.decode(str));

String exChangeRateModelToJson(ExChangeRateModel data) => json.encode(data.toJson());

@JsonSerializable()
class ExChangeRateModel extends ExChangeRateEntity {
    @override
  @JsonKey(name: "result")
    String result;
    @override
  @JsonKey(name: "time_last_update_utc")
    String timeLastUpdateUtc;
    @override
  @JsonKey(name: "base_code")
    String baseCode;
    @override
  @JsonKey(name: "conversion_rates")
    ConversionRates conversionRates;

    ExChangeRateModel({
        required this.result,
        required this.timeLastUpdateUtc,
        required this.baseCode,
        required this.conversionRates,
    }) : super(result, timeLastUpdateUtc, baseCode, conversionRates);

    factory ExChangeRateModel.fromJson(Map<String, dynamic> json) => _$ExChangeRateModelFromJson(json);

    Map<String, dynamic> toJson() => _$ExChangeRateModelToJson(this);
}

@JsonSerializable()
class ConversionRates extends ConversionRatesEntity {
    @override
  @JsonKey(name: "USD")
    double usd;
    @override
  @JsonKey(name: "THB")
    double thb;
    @override
  @JsonKey(name: "LAK")
    double lak;
    @override
  @JsonKey(name: "CNY")
    double cny;

  ConversionRates({
        required this.usd,
        required this.thb,
        required this.lak,
        required this.cny,
    }) : super(usd , thb , lak , cny);

    

    factory ConversionRates.fromJson(Map<String, dynamic> json) => _$ConversionRatesFromJson(json);

    Map<String, dynamic> toJson() => _$ConversionRatesToJson(this);
}
