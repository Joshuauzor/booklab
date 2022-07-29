import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// A failure is an interface that is used to represent a
///  failure in the domain layer.
@freezed
class Failure with _$Failure {
  /// [ Failure.serverError] is a failure that is used to represent failure/error from server
  const factory Failure.serverError(
    String message,
  ) = _$ServerFailure;

  /// [ Failure.noInternet] is a failure that is used to represent failure/error from no internet
  const factory Failure.noInternet() = _$NoInternetFailure;

  /// [Failure.unknown()] is a failure that is used to represent failure/error from unknown source
  const factory Failure.unknown() = _$UnknownFailure;
  const factory Failure.app(String? message) = _$AppFailure;
}

///[ConvertFailureToString] is a helper class that
/// converts a failure to a string
class ConvertFailureToString {
  /// [call] converts a failure to a string

  String call(Failure failure) {
    return failure.map(
      app: (value) => value.message ?? 'An unknown error occurred',
      serverError: (failure) => failure.message,
      noInternet: (failure) =>
          'Please check your internet connection and try again',
      unknown: (failure) => 'Unknown error:',
    );
  }
}
