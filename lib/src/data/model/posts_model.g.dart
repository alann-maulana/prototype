// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsModel _$$_PostsModelFromJson(Map<String, dynamic> json) =>
    _$_PostsModel(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_PostsModelToJson(_$_PostsModel instance) {
  final val = <String, dynamic>{
    'userId': instance.userId,
    'id': instance.id,
    'title': instance.title,
    'body': instance.body,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

_$_PostsContentModel _$$_PostsContentModelFromJson(Map<String, dynamic> json) =>
    _$_PostsContentModel(
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_PostsContentModelToJson(
        _$_PostsContentModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
