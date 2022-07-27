import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// [NetworkInfo] is used to check internet connection
/// and return the status of internet connection if [isConnected] is true/false
abstract class NetworkInfo {
  /// [isConnected] returns true if internet connection is available
  Future<bool> get isConnected;
}

/// [NetworkInfoImpl] implements [NetworkInfo]
/// and is responsible for implementing the logics to check internet connection
/// and return the status of internet connection if [isConnected] is true/false
@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  ///[NetworkInfoImpl] constructor and injected [InternetConnectionChecker]
  NetworkInfoImpl(
    this.dataConnectionChecker,
  );

  /// [InternetConnectionChecker] is used to check internet connection
  final InternetConnectionChecker dataConnectionChecker;

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}
