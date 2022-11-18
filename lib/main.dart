import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:prototype/src/domain/repository/posts_repository.dart';

import 'src/core/config/app_route.dart';
import 'src/data/repository/posts_repository_impl.dart';
import 'src/data/source/remote/api_service.dart';
import 'src/presentation/view/home_page.dart';

void main() {
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
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Prototype Demo',
      home: HomePage(title: 'Prototype'),
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
