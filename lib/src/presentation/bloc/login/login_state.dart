part of 'login_bloc.dart';

enum LoginStatus { idle, ready, busy, succeed, failed }

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.idle) LoginStatus status,
    required TextEditingController fieldPin,
    UserModel? user,
    String? error,
  }) = _LoginState;
}
