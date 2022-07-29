import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

/// [BookLabException] is thrown when there is a server error.
@freezed
class BookLabException with _$BookLabException implements Exception {
  /// [BookLabException.server] is thrown when there is a server error.
  const factory BookLabException.server(String message) =
      _$BookLabServerException;

  /// [BookLabException.noInternet] is thrown when there
  /// is no internet connection.
  const factory BookLabException.noInternet() = _$BookLabNoInternetException;

  /// [BookLabException.app] is thrown when there
  /// is an errpr in the app.
  const factory BookLabException.app(String? message) = _$BookLabAppException;

  /// [BookLabException.unknown] is thrown when there is an unknown error.
  const factory BookLabException.unknown() = _$BookLabUnknownException;
}
