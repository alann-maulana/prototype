part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class Authenticated extends AuthEvent {
  const Authenticated(this.user);
  final UserModel user;
  @override
  List<Object?> get props => [user];
}

class Unauthenticated extends AuthEvent {
  const Unauthenticated();
  @override
  List<Object?> get props => [];
}
