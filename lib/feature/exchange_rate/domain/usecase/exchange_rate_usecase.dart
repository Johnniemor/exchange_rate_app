import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/exchange_rate_entity.dart';
import '../repository/exchange_rate_repository.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class ExChangeRateUseCase implements Usecase<Either<Failure , ExChangeRateEntity> , Noparams>{
  final ExChangeRateRepository _exChangeRateRepository;

  ExChangeRateUseCase(this._exChangeRateRepository);
  
  @override
  Future<Either<Failure, ExChangeRateEntity>> call(Noparams params) async {
   return await _exChangeRateRepository.fetchExChangeRate();
  }
}