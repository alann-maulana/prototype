// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsModel _$PostsModelFromJson(Map<String, dynamic> json) {
  return _PostsModel.fromJson(json);
}

/// @nodoc
mixin _$PostsModel {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsModelCopyWith<PostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsModelCopyWith<$Res> {
  factory $PostsModelCopyWith(
          PostsModel value, $Res Function(PostsModel) then) =
      _$PostsModelCopyWithImpl<$Res, PostsModel>;
  @useResult
  $Res call({int userId, int id, String title, String body, String? name});
}

/// @nodoc
class _$PostsModelCopyWithImpl<$Res, $Val extends PostsModel>
    implements $PostsModelCopyWith<$Res> {
  _$PostsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsModelCopyWith<$Res>
    implements $PostsModelCopyWith<$Res> {
  factory _$$_PostsModelCopyWith(
          _$_PostsModel value, $Res Function(_$_PostsModel) then) =
      __$$_PostsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, String body, String? name});
}

/// @nodoc
class __$$_PostsModelCopyWithImpl<$Res>
    extends _$PostsModelCopyWithImpl<$Res, _$_PostsModel>
    implements _$$_PostsModelCopyWith<$Res> {
  __$$_PostsModelCopyWithImpl(
      _$_PostsModel _value, $Res Function(_$_PostsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? name = freezed,
  }) {
    return _then(_$_PostsModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsModel implements _PostsModel {
  const _$_PostsModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      this.name});

  factory _$_PostsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostsModelFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String? name;

  @override
  String toString() {
    return 'PostsModel(userId: $userId, id: $id, title: $title, body: $body, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsModelCopyWith<_$_PostsModel> get copyWith =>
      __$$_PostsModelCopyWithImpl<_$_PostsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsModelToJson(
      this,
    );
  }
}

abstract class _PostsModel implements PostsModel {
  const factory _PostsModel(
      {required final int userId,
      required final int id,
      required final String title,
      required final String body,
      final String? name}) = _$_PostsModel;

  factory _PostsModel.fromJson(Map<String, dynamic> json) =
      _$_PostsModel.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PostsModelCopyWith<_$_PostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostsContentModel _$PostsContentModelFromJson(Map<String, dynamic> json) {
  return _PostsContentModel.fromJson(json);
}

/// @nodoc
mixin _$PostsContentModel {
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsContentModelCopyWith<PostsContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsContentModelCopyWith<$Res> {
  factory $PostsContentModelCopyWith(
          PostsContentModel value, $Res Function(PostsContentModel) then) =
      _$PostsContentModelCopyWithImpl<$Res, PostsContentModel>;
  @useResult
  $Res call({int userId, String title, String body});
}

/// @nodoc
class _$PostsContentModelCopyWithImpl<$Res, $Val extends PostsContentModel>
    implements $PostsContentModelCopyWith<$Res> {
  _$PostsContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsContentModelCopyWith<$Res>
    implements $PostsContentModelCopyWith<$Res> {
  factory _$$_PostsContentModelCopyWith(_$_PostsContentModel value,
          $Res Function(_$_PostsContentModel) then) =
      __$$_PostsContentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String title, String body});
}

/// @nodoc
class __$$_PostsContentModelCopyWithImpl<$Res>
    extends _$PostsContentModelCopyWithImpl<$Res, _$_PostsContentModel>
    implements _$$_PostsContentModelCopyWith<$Res> {
  __$$_PostsContentModelCopyWithImpl(
      _$_PostsContentModel _value, $Res Function(_$_PostsContentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$_PostsContentModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsContentModel implements _PostsContentModel {
  const _$_PostsContentModel(
      {required this.userId, required this.title, required this.body});

  factory _$_PostsContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostsContentModelFromJson(json);

  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostsContentModel(userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsContentModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsContentModelCopyWith<_$_PostsContentModel> get copyWith =>
      __$$_PostsContentModelCopyWithImpl<_$_PostsContentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsContentModelToJson(
      this,
    );
  }
}

abstract class _PostsContentModel implements PostsContentModel {
  const factory _PostsContentModel(
      {required final int userId,
      required final String title,
      required final String body}) = _$_PostsContentModel;

  factory _PostsContentModel.fromJson(Map<String, dynamic> json) =
      _$_PostsContentModel.fromJson;

  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsContentModelCopyWith<_$_PostsContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
