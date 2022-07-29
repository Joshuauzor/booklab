// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookLabExceptionTearOff {
  const _$BookLabExceptionTearOff();

  _$BookLabServerException server(String message) {
    return _$BookLabServerException(
      message,
    );
  }

  _$BookLabNoInternetException noInternet() {
    return const _$BookLabNoInternetException();
  }

  _$BookLabAppException app(String? message) {
    return _$BookLabAppException(
      message,
    );
  }

  _$BookLabUnknownException unknown() {
    return const _$BookLabUnknownException();
  }
}

/// @nodoc
const $BookLabException = _$BookLabExceptionTearOff();

/// @nodoc
mixin _$BookLabException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookLabServerException value) server,
    required TResult Function(_$BookLabNoInternetException value) noInternet,
    required TResult Function(_$BookLabAppException value) app,
    required TResult Function(_$BookLabUnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookLabExceptionCopyWith<$Res> {
  factory $BookLabExceptionCopyWith(
          BookLabException value, $Res Function(BookLabException) then) =
      _$BookLabExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookLabExceptionCopyWithImpl<$Res>
    implements $BookLabExceptionCopyWith<$Res> {
  _$BookLabExceptionCopyWithImpl(this._value, this._then);

  final BookLabException _value;
  // ignore: unused_field
  final $Res Function(BookLabException) _then;
}

/// @nodoc
abstract class _$$BookLabServerExceptionCopyWith<$Res> {
  factory _$$BookLabServerExceptionCopyWith(_$BookLabServerException value,
          $Res Function(_$BookLabServerException) then) =
      __$$BookLabServerExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$BookLabServerExceptionCopyWithImpl<$Res>
    extends _$BookLabExceptionCopyWithImpl<$Res>
    implements _$$BookLabServerExceptionCopyWith<$Res> {
  __$$BookLabServerExceptionCopyWithImpl(_$BookLabServerException _value,
      $Res Function(_$BookLabServerException) _then)
      : super(_value, (v) => _then(v as _$BookLabServerException));

  @override
  _$BookLabServerException get _value =>
      super._value as _$BookLabServerException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BookLabServerException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$BookLabServerException implements _$BookLabServerException {
  const _$_$BookLabServerException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookLabException.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookLabServerException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$BookLabServerExceptionCopyWith<_$BookLabServerException> get copyWith =>
      __$$BookLabServerExceptionCopyWithImpl<_$BookLabServerException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookLabServerException value) server,
    required TResult Function(_$BookLabNoInternetException value) noInternet,
    required TResult Function(_$BookLabAppException value) app,
    required TResult Function(_$BookLabUnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$BookLabServerException implements BookLabException {
  const factory _$BookLabServerException(String message) =
      _$_$BookLabServerException;

  String get message;
  @JsonKey(ignore: true)
  _$$BookLabServerExceptionCopyWith<_$BookLabServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookLabNoInternetExceptionCopyWith<$Res> {
  factory _$$BookLabNoInternetExceptionCopyWith(
          _$BookLabNoInternetException value,
          $Res Function(_$BookLabNoInternetException) then) =
      __$$BookLabNoInternetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookLabNoInternetExceptionCopyWithImpl<$Res>
    extends _$BookLabExceptionCopyWithImpl<$Res>
    implements _$$BookLabNoInternetExceptionCopyWith<$Res> {
  __$$BookLabNoInternetExceptionCopyWithImpl(
      _$BookLabNoInternetException _value,
      $Res Function(_$BookLabNoInternetException) _then)
      : super(_value, (v) => _then(v as _$BookLabNoInternetException));

  @override
  _$BookLabNoInternetException get _value =>
      super._value as _$BookLabNoInternetException;
}

/// @nodoc

class _$_$BookLabNoInternetException implements _$BookLabNoInternetException {
  const _$_$BookLabNoInternetException();

  @override
  String toString() {
    return 'BookLabException.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookLabNoInternetException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookLabServerException value) server,
    required TResult Function(_$BookLabNoInternetException value) noInternet,
    required TResult Function(_$BookLabAppException value) app,
    required TResult Function(_$BookLabUnknownException value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$BookLabNoInternetException implements BookLabException {
  const factory _$BookLabNoInternetException() = _$_$BookLabNoInternetException;
}

/// @nodoc
abstract class _$$BookLabAppExceptionCopyWith<$Res> {
  factory _$$BookLabAppExceptionCopyWith(_$BookLabAppException value,
          $Res Function(_$BookLabAppException) then) =
      __$$BookLabAppExceptionCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$BookLabAppExceptionCopyWithImpl<$Res>
    extends _$BookLabExceptionCopyWithImpl<$Res>
    implements _$$BookLabAppExceptionCopyWith<$Res> {
  __$$BookLabAppExceptionCopyWithImpl(
      _$BookLabAppException _value, $Res Function(_$BookLabAppException) _then)
      : super(_value, (v) => _then(v as _$BookLabAppException));

  @override
  _$BookLabAppException get _value => super._value as _$BookLabAppException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BookLabAppException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$BookLabAppException implements _$BookLabAppException {
  const _$_$BookLabAppException(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'BookLabException.app(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookLabAppException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$BookLabAppExceptionCopyWith<_$BookLabAppException> get copyWith =>
      __$$BookLabAppExceptionCopyWithImpl<_$BookLabAppException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookLabServerException value) server,
    required TResult Function(_$BookLabNoInternetException value) noInternet,
    required TResult Function(_$BookLabAppException value) app,
    required TResult Function(_$BookLabUnknownException value) unknown,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$BookLabAppException implements BookLabException {
  const factory _$BookLabAppException(String? message) =
      _$_$BookLabAppException;

  String? get message;
  @JsonKey(ignore: true)
  _$$BookLabAppExceptionCopyWith<_$BookLabAppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookLabUnknownExceptionCopyWith<$Res> {
  factory _$$BookLabUnknownExceptionCopyWith(_$BookLabUnknownException value,
          $Res Function(_$BookLabUnknownException) then) =
      __$$BookLabUnknownExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookLabUnknownExceptionCopyWithImpl<$Res>
    extends _$BookLabExceptionCopyWithImpl<$Res>
    implements _$$BookLabUnknownExceptionCopyWith<$Res> {
  __$$BookLabUnknownExceptionCopyWithImpl(_$BookLabUnknownException _value,
      $Res Function(_$BookLabUnknownException) _then)
      : super(_value, (v) => _then(v as _$BookLabUnknownException));

  @override
  _$BookLabUnknownException get _value =>
      super._value as _$BookLabUnknownException;
}

/// @nodoc

class _$_$BookLabUnknownException implements _$BookLabUnknownException {
  const _$_$BookLabUnknownException();

  @override
  String toString() {
    return 'BookLabException.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookLabUnknownException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function(String? message) app,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function(String? message)? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookLabServerException value) server,
    required TResult Function(_$BookLabNoInternetException value) noInternet,
    required TResult Function(_$BookLabAppException value) app,
    required TResult Function(_$BookLabUnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookLabServerException value)? server,
    TResult Function(_$BookLabNoInternetException value)? noInternet,
    TResult Function(_$BookLabAppException value)? app,
    TResult Function(_$BookLabUnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$BookLabUnknownException implements BookLabException {
  const factory _$BookLabUnknownException() = _$_$BookLabUnknownException;
}
