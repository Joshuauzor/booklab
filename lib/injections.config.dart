// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'core/core.dart' as _i9;
import 'core/network/network_info.dart' as _i7;
import 'features/home/data/datasources/book_remote_datasouce.dart' as _i8;
import 'features/home/data/repositories/book_repositories_impl.dart' as _i11;
import 'features/home/domain/repositories/book_repositories.dart' as _i10;
import 'features/home/domain/repositories/repositories.dart' as _i4;
import 'features/home/domain/usecases/book_usecases.dart' as _i3;
import 'register_module.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BooksUseCase>(
      () => _i3.BooksUseCase(get<_i4.BookRepository>()));
  gh.factory<_i5.Dio>(() => registerModule.dio);
  gh.factory<_i6.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i7.NetworkInfo>(
      () => _i7.NetworkInfoImpl(get<_i6.InternetConnectionChecker>()));
  gh.lazySingleton<_i8.BookRemoteDataSource>(() => _i8.BookRemoteDataSourceImpl(
      networkInfo: get<_i9.NetworkInfo>(), dio: get<_i5.Dio>()));
  gh.lazySingleton<_i10.BookRepository>(
      () => _i11.BookRepositoryImpl(get<_i8.BookRemoteDataSource>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
