part of 'ex_change_rate_cubit.dart';

@freezed
class ExChangeRateState with _$ExChangeRateState {
  const factory ExChangeRateState.initial() = _Initial;
  const factory ExChangeRateState.loading() = _Loading;
  const factory ExChangeRateState.success(ExChangeRateEntity exChangeRateEntity) = _Success;
  const factory ExChangeRateState.failure(String message) = _Failure;
}
