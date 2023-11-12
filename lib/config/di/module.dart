import '../routes/routers.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  AppRouter get routes => AppRouter();

  @lazySingleton
  Dio dio() {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 30);
    return dio;
  }
}
