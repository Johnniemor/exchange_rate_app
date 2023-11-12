// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:exchange_rate_app/config/di/module.dart' as _i12;
import 'package:exchange_rate_app/config/routes/routers.dart' as _i3;
import 'package:exchange_rate_app/core/service/exchange_rate_service.dart'
    as _i5;
import 'package:exchange_rate_app/feature/change_language/cubit/select_language_cubit.dart'
    as _i6;
import 'package:exchange_rate_app/feature/exchange_rate/data/datasource/exchange_rate_remote_data_source.dart'
    as _i7;
import 'package:exchange_rate_app/feature/exchange_rate/data/repository/exchange_rate_repository_impl.dart'
    as _i9;
import 'package:exchange_rate_app/feature/exchange_rate/domain/repository/exchange_rate_repository.dart'
    as _i8;
import 'package:exchange_rate_app/feature/exchange_rate/domain/usecase/exchange_rate_usecase.dart'
    as _i10;
import 'package:exchange_rate_app/feature/exchange_rate/presentation/cubit/ex_change_rate_cubit.dart'
    as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i3.AppRouter>(() => injectableModule.routes);
    gh.lazySingleton<_i4.Dio>(() => injectableModule.dio());
    gh.lazySingleton<_i5.ExChangeRateService>(
        () => _i5.ExChangeRateService(gh<_i4.Dio>()));
    gh.factory<_i6.SelectLanguageCubit>(() => _i6.SelectLanguageCubit());
    gh.lazySingleton<_i7.ExChangeRateRemoteDataSource>(() =>
        _i7.ExChangeRateRemoteDataSourceImpl(gh<_i5.ExChangeRateService>()));
    gh.lazySingleton<_i8.ExChangeRateRepository>(() =>
        _i9.ExChangeRateRepositoryImpl(gh<_i7.ExChangeRateRemoteDataSource>()));
    gh.lazySingleton<_i10.ExChangeRateUseCase>(
        () => _i10.ExChangeRateUseCase(gh<_i8.ExChangeRateRepository>()));
    gh.factory<_i11.ExChangeRateCubit>(
        () => _i11.ExChangeRateCubit(gh<_i10.ExChangeRateUseCase>()));
    return this;
  }
}

class _$InjectableModule extends _i12.InjectableModule {}
