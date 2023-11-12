import '../../../../config/di/config_dependencies.dart';
import '../../../../config/routes/routers.dart';
import '../../../../config/routes/routers.gr.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/exchange_rate_entity.dart';
import '../../domain/usecase/exchange_rate_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ex_change_rate_state.dart';
part 'ex_change_rate_cubit.freezed.dart';

@injectable
class ExChangeRateCubit extends Cubit<ExChangeRateState> {
  final ExChangeRateUseCase _exChangeRateUseCase;
  ExChangeRateCubit(this._exChangeRateUseCase)
      : super(const ExChangeRateState.initial());


      
  Future<void> initializeFetchMethod() async {
     fetchExChangeRate();
  }

  Future<void> fetchExChangeRate() async {
    final response = await _exChangeRateUseCase(Noparams());
    response.fold((l) {
      emit(ExChangeRateState.failure(l.message));
    }, (r) {
      emit(ExChangeRateState.success(r));
      getIt<AppRouter>().replace(const ExChangeRateRoute());
    });
  }
}
