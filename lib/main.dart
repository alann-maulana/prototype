import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:prototype/src/data/repository/user_repository_impl.dart';
import 'package:prototype/src/domain/repository/posts_repository.dart';
import 'package:prototype/src/domain/repository/user_repository.dart';

import 'src/core/config/app_route.dart';
import 'src/data/repository/posts_repository_impl.dart';
import 'src/data/source/remote/api_service.dart';
import 'src/presentation/bloc/auth/auth_bloc.dart';
import 'src/presentation/view/home_page.dart';
import 'src/presentation/view/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // setup hydrated bloc storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // initialize API service
  final dio = Dio()
    ..transformer = FlutterTransformer()
    ..options.validateStatus = (int? status) {
      if (status == null) return false;
      return true;
    };

  if (kDebugMode) {
    final logger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 180,
    );
    dio.interceptors.add(logger);
  }
  final apiService = ApiService(dio);

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<PostsRepository>(
          create: (context) => PostsRepositoryImpl(apiService),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepositoryImpl(),
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.user == null) {
          navigatorKey.currentState!
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
          return;
        }

        navigatorKey.currentState!
            .pushNamedAndRemoveUntil(HomePage.routeName, (route) => false);
      },
      child: MaterialApp(
        title: 'Prototype Demo',
        navigatorKey: navigatorKey,
        initialRoute: Navigator.defaultRouteName,
        onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }
}
