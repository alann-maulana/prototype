part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class ChangeLoginStatus extends LoginEvent {
  const ChangeLoginStatus(this.status);
  final LoginStatus status;
  @override
  List<Object?> get props => [status];
}

class SubmitLogin extends LoginEvent {
  const SubmitLogin();
  @override
  List<Object?> get props => [];
}
