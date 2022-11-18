import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototype/src/domain/entity/posts.dart';
import 'package:prototype/src/domain/repository/posts_repository.dart';

part 'post_list_event.dart';
part 'post_list_state.dart';
part 'post_list_bloc.freezed.dart';

class PostListBloc extends Bloc<PostListEvent, PostListState> {
  PostListBloc({required this.repository}) : super(const PostListState()) {
    on<FetchPosts>(_onFetchPosts);
  }

  final PostsRepository repository;

  FutureOr<void> _onFetchPosts(
      FetchPosts event, Emitter<PostListState> emit) async {
    emit(const PostListState());
    try {
      final posts = await repository.getPosts();
      emit(state.copyWith(posts: posts));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
