// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import 'core/core.dart' as _i11;
import 'core/local_data/local_data_storage.dart' as _i8;
import 'core/network/network_info.dart' as _i9;
import 'features/home/data/datasources/book_remote_datasouce.dart' as _i10;
import 'features/home/data/repositories/book_repositories_impl.dart' as _i13;
import 'features/home/domain/repositories/book_repositories.dart' as _i12;
import 'features/home/domain/repositories/repositories.dart' as _i4;
import 'features/home/domain/usecases/book_usecases.dart' as _i3;
import 'register_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BooksUseCase>(
      () => _i3.BooksUseCase(get<_i4.BookRepository>()));
  gh.factory<_i5.Dio>(() => registerModule.dio);
  gh.factory<_i6.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.factory<_i7.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i8.LocalDataStorage>(
      () => _i8.LocalDataStorageImpl(get<_i6.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i9.NetworkInfoImpl(get<_i7.InternetConnectionChecker>()));
  gh.lazySingleton<_i10.BookRemoteDataSource>(() =>
      _i10.BookRemoteDataSourceImpl(
          networkInfo: get<_i11.NetworkInfo>(),
          localDataStorage: get<_i11.LocalDataStorage>(),
          dio: get<_i5.Dio>()));
  gh.lazySingleton<_i12.BookRepository>(
      () => _i13.BookRepositoryImpl(get<_i10.BookRemoteDataSource>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
