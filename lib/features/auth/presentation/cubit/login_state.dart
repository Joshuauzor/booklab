import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _$InitialLoginState;
  const factory LoginState.loading() = _$LoadingLoginState;
  const factory LoginState.authenticated() = _$AuthenticatedLoginState;
  const factory LoginState.unauthenticated(String message) =
      _$UnauthenticatedLoginState;
}
