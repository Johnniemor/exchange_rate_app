import 'package:dio/dio.dart';
import '../constant/api/api_key.dart';
import '../../feature/exchange_rate/data/model/exchange_rate_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'exchange_rate_service.g.dart';

@lazySingleton
@RestApi(baseUrl: baseUrl)
abstract class ExChangeRateService {
  @factoryMethod
  factory ExChangeRateService(Dio dio) = _ExChangeRateService;

  @GET(rateUrl)
  Future<ExChangeRateModel> fetchExChangeRate(
  );
}