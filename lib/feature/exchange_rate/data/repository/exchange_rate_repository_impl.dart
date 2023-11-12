import 'dart:io';

import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../datasource/exchange_rate_remote_data_source.dart';
import '../../domain/entities/exchange_rate_entity.dart';
import '../../domain/repository/exchange_rate_repository.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: ExChangeRateRepository)
class ExChangeRateRepositoryImpl implements ExChangeRateRepository{
  final ExChangeRateRemoteDataSource _exChangeRateRemoteDataSource;

  ExChangeRateRepositoryImpl(this._exChangeRateRemoteDataSource);

  @override
  Future<Either<Failure, ExChangeRateEntity>> fetchExChangeRate() async {
    try{
      final response = await _exChangeRateRemoteDataSource.fetchExChangeRate();
      print(response);
      return (Right(response));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message.toString()));
    } on SocketException catch (e) {
      return Left(ServerFailure(e.message.toString()));
    } on ConnectionException catch (e) {
      return Left(ConnectionFailure(e.message.toString()));
    }
  }
}