import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototype/src/data/model/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<Authenticated>((event, emit) {
      emit(state.copyWith(user: event.user));
    });
    on<Unauthenticated>((event, emit) {
      emit(state.copyWith(user: null));
    });
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      return AuthState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }
}
