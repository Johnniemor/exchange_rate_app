import 'package:equatable/equatable.dart';
import '../../data/model/exchange_rate_model.dart';

class ExChangeRateEntity extends Equatable{
  final  String result;
  final  String timeLastUpdateUtc;
   final String baseCode;
   final ConversionRates conversionRates;

  const ExChangeRateEntity(this.result, this.timeLastUpdateUtc, this.baseCode, this.conversionRates);
  
  @override
  List<Object?> get props => [result, timeLastUpdateUtc, baseCode, conversionRates];
}