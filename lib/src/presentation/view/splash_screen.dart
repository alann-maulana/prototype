import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:prototype/src/presentation/view/home_page.dart';
import 'package:prototype/src/presentation/view/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        final auth = context.read<AuthBloc>();
        final user = auth.state.user;

        if (user == null) {
          Navigator.pushReplacementNamed(context, LoginPage.routeName);
        } else {
          Navigator.pushReplacementNamed(context, HomePage.routeName);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
