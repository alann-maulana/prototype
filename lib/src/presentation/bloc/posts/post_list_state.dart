part of 'post_list_bloc.dart';

@freezed
class PostListState with _$PostListState {
  const factory PostListState({
    List<Posts>? posts,
    String? error,
  }) = _PostListState;
}

extension PostListStateData on PostListState {
  bool get hasData => posts != null;
  bool get hasError => error != null;
}