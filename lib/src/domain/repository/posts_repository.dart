import 'package:prototype/src/domain/entity/posts.dart';

abstract class PostsRepository {
  Future<List<Posts>> getPosts();
  Future<Posts> getPost(int id);
}
