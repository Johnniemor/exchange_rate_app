import 'package:equatable/equatable.dart';

class ConversionRatesEntity extends Equatable{
  final  double usd;
  final  double thb;
  final  double lak;
  final  double cny;

  const ConversionRatesEntity(this.usd, this.thb, this.lak, this.cny);
  
  @override
  List<Object?> get props => [usd , thb , lak , cny];
}