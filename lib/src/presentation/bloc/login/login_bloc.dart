import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototype/src/data/model/user_model.dart';
import 'package:prototype/src/domain/repository/user_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.userRepository})
      : super(LoginState(fieldPin: TextEditingController())) {
    state.fieldPin.addListener(() {
      if (state.fieldPin.text.isEmpty) {
        add(const ChangeLoginStatus(LoginStatus.idle));
      } else {
        add(const ChangeLoginStatus(LoginStatus.ready));
      }
    });

    on<ChangeLoginStatus>((event, emit) {
      emit(state.copyWith(status: event.status));
    });
    on<SubmitLogin>(_onSubmitLogin);
  }

  final UserRepository userRepository;

  FutureOr<void> _onSubmitLogin(
      SubmitLogin event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.busy, error: null, user: null));
    try {
      final pin = state.fieldPin.text;
      final user = await userRepository.login(pin);
      emit(state.copyWith(status: LoginStatus.succeed, user: user));
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.failed, error: e.toString()));
    }
  }
}
