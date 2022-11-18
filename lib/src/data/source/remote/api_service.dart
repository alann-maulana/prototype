import 'package:dio/dio.dart';
import 'package:prototype/src/data/model/posts_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/posts")
  Future<List<PostsModel>> getPosts();

  @GET("/posts/{id}")
  Future<PostsModel> getPost({@Path() required int id});

  @POST("/posts")
  Future<PostsModel> createPost({
    @Body() required PostsContentModel request,
  });

  @PUT("/posts")
  Future<PostsModel> updatePost({
    @Body() required PostsContentModel request,
  });
}
