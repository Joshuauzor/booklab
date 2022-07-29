// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'core/local_data/local_data_storage.dart' as _i7;
import 'core/network/network_info.dart' as _i8;
import 'features/home/domain/usecases/book_usecases.dart' as _i3;
import 'register_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BooksUseCase>(() => _i3.BooksUseCase(get<dynamic>()));
  gh.factory<_i4.Dio>(() => registerModule.dio);
  gh.factory<_i5.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.factory<_i6.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i7.LocalDataStorage>(
      () => _i7.LocalDataStorageImpl(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i8.NetworkInfo>(
      () => _i8.NetworkInfoImpl(get<_i6.InternetConnectionChecker>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
