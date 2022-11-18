import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototype/src/domain/entity/posts.dart';

part 'posts_model.freezed.dart';
part 'posts_model.g.dart';

@freezed
class PostsModel extends Posts with _$PostsModel {
  const factory PostsModel({
    required int userId,
    required int id,
    required String title,
    required String body,
    String? name,
  }) = _PostsModel;

  factory PostsModel.fromJson(Map<String, dynamic> json) =>
      _$PostsModelFromJson(json);
}

@freezed
class PostsContentModel with _$PostsContentModel {
  const factory PostsContentModel({
    required int userId,
    required String title,
    required String body,
  }) = _PostsContentModel;

  factory PostsContentModel.fromJson(Map<String, dynamic> json) =>
      _$PostsContentModelFromJson(json);
}
