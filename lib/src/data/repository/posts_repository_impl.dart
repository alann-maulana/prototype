import 'package:prototype/src/data/source/remote/api_service.dart';
import 'package:prototype/src/domain/entity/posts.dart';
import 'package:prototype/src/domain/repository/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<List<Posts>> getPosts() async {
    return apiService.getPosts();
  }

  @override
  Future<Posts> getPost(int id) async {
    return apiService.getPost(id: id);
  }
}
