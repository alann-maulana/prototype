import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype/src/domain/repository/posts_repository.dart';
import 'package:prototype/src/presentation/bloc/posts/post_list_bloc.dart';
import 'package:prototype/src/presentation/view/home_page.dart';
import 'package:prototype/src/presentation/view/post_list_view.dart';

class AppRoute {
  const AppRoute._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late WidgetBuilder builder;
    bool fullscreenDialog = false;

    switch (settings.name) {
      case PostListView.routeName:
        builder = (context) => BlocProvider(
              create: (context) => PostListBloc(
                repository: context.read<PostsRepository>(),
              ),
              child: const PostListView(),
            );
        break;
      default:
        builder = (context) => const HomePage(title: 'Prototype');
        break;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: builder,
      fullscreenDialog: fullscreenDialog,
      maintainState: true,
    );
  }
}
