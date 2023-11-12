import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/service/exchange_rate_service.dart';
import '../../../../core/util/response_helper.dart';
import '../model/exchange_rate_model.dart';
import 'package:injectable/injectable.dart';

abstract class ExChangeRateRemoteDataSource {
  Future<ExChangeRateModel> fetchExChangeRate();
}

@LazySingleton(as: ExChangeRateRemoteDataSource)
class ExChangeRateRemoteDataSourceImpl implements ExChangeRateRemoteDataSource {
  final ExChangeRateService _exChangeRateService;

  ExChangeRateRemoteDataSourceImpl(this._exChangeRateService);

  @override
  Future<ExChangeRateModel> fetchExChangeRate() async {
    try {
      return await _exChangeRateService.fetchExChangeRate();
    } on DioException catch (e) {
      throw ResponseHelper.returnResponse(e);
    } catch (error) {
      throw ServerException(error.toString());
    }
  }
}
