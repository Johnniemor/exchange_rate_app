import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/exchange_rate_entity.dart';

abstract class ExChangeRateRepository {
  Future<Either<Failure, ExChangeRateEntity>> fetchExChangeRate();
}
