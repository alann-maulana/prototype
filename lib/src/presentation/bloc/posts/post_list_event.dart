part of 'post_list_bloc.dart';

abstract class PostListEvent extends Equatable {
  const PostListEvent();
}

class FetchPosts extends PostListEvent {
  const FetchPosts();
  @override
  List<Object?> get props => [];
}
