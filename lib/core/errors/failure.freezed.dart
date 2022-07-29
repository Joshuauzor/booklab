// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _$ServerFailure serverError(String message) {
    return _$ServerFailure(
      message,
    );
  }

  _$NoInternetFailure noInternet() {
    return const _$NoInternetFailure();
  }

  _$UnknownFailure unknown() {
    return const _$UnknownFailure();
  }

  _$AppFailure app(String? message) {
    return _$AppFailure(
      message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ServerFailure implements _$ServerFailure {
  const _$_$ServerFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _$ServerFailure implements Failure {
  const factory _$ServerFailure(String message) = _$_$ServerFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureCopyWith<$Res> {
  factory _$$NoInternetFailureCopyWith(
          _$NoInternetFailure value, $Res Function(_$NoInternetFailure) then) =
      __$$NoInternetFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$NoInternetFailureCopyWith<$Res> {
  __$$NoInternetFailureCopyWithImpl(
      _$NoInternetFailure _value, $Res Function(_$NoInternetFailure) _then)
      : super(_value, (v) => _then(v as _$NoInternetFailure));

  @override
  _$NoInternetFailure get _value => super._value as _$NoInternetFailure;
}

/// @nodoc

class _$_$NoInternetFailure implements _$NoInternetFailure {
  const _$_$NoInternetFailure();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
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
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetFailure implements Failure {
  const factory _$NoInternetFailure() = _$_$NoInternetFailure;
}

/// @nodoc
abstract class _$$UnknownFailureCopyWith<$Res> {
  factory _$$UnknownFailureCopyWith(
          _$UnknownFailure value, $Res Function(_$UnknownFailure) then) =
      __$$UnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$UnknownFailureCopyWith<$Res> {
  __$$UnknownFailureCopyWithImpl(
      _$UnknownFailure _value, $Res Function(_$UnknownFailure) _then)
      : super(_value, (v) => _then(v as _$UnknownFailure));

  @override
  _$UnknownFailure get _value => super._value as _$UnknownFailure;
}

/// @nodoc

class _$_$UnknownFailure implements _$UnknownFailure {
  const _$_$UnknownFailure();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
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
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$UnknownFailure implements Failure {
  const factory _$UnknownFailure() = _$_$UnknownFailure;
}

/// @nodoc
abstract class _$$AppFailureCopyWith<$Res> {
  factory _$$AppFailureCopyWith(
          _$AppFailure value, $Res Function(_$AppFailure) then) =
      __$$AppFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$AppFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$AppFailureCopyWith<$Res> {
  __$$AppFailureCopyWithImpl(
      _$AppFailure _value, $Res Function(_$AppFailure) _then)
      : super(_value, (v) => _then(v as _$AppFailure));

  @override
  _$AppFailure get _value => super._value as _$AppFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AppFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$AppFailure implements _$AppFailure {
  const _$_$AppFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.app(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AppFailureCopyWith<_$AppFailure> get copyWith =>
      __$$AppFailureCopyWithImpl<_$AppFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function(String? message) app,
  }) {
    return app(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
  }) {
    return app?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function(String? message)? app,
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
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$AppFailure implements Failure {
  const factory _$AppFailure(String? message) = _$_$AppFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$$AppFailureCopyWith<_$AppFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
