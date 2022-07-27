import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// [RegisterModule] is used to register modules(for third party dependencies)
@module
abstract class RegisterModule {
  Dio get dio => Dio();

  /// register [FlutterSecureStorage] package for
  ///  local storage
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  /// register [InternetConnectionChecker] package for checking
  ///  internet connection
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();
}
