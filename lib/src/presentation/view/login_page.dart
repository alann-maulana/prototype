import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype/src/presentation/bloc/auth/auth_bloc.dart';

import '../bloc/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.succeed) {
          context.read<AuthBloc>().add(Authenticated(state.user!));
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login Prototype'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: const [
              _InputPin(),
              SizedBox(height: 16),
              _ButtonSubmitIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonSubmitIndicator extends StatelessWidget {
  const _ButtonSubmitIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final disabledButton =
        [LoginStatus.idle, LoginStatus.busy].contains(state.status);

        return Row(
          children: [
            ElevatedButton(
              onPressed: disabledButton
                  ? null
                  : () => context.read<LoginBloc>().add(const SubmitLogin()),
              child: const Text('Validasi PIN'),
            ),
            if (state.status == LoginStatus.busy) ...{
              const SizedBox(width: 16),
              const CircularProgressIndicator.adaptive(),
            }
          ],
        );
      },
    );
  }
}

class _InputPin extends StatelessWidget {
  const _InputPin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
      previous.status != current.status ||
          previous.fieldPin != current.fieldPin ||
          previous.error != current.error,
      builder: (context, state) {
        final disabled = state.status == LoginStatus.busy;

        return TextField(
          controller: state.fieldPin,
          decoration: InputDecoration(
            hintText: 'Masukkan PIN',
            errorText: state.error,
          ),
          autofocus: true,
          keyboardType: TextInputType.number,
          maxLength: 4,
          enabled: !disabled,
        );
      },
    );
  }
}
