// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostListState {
  List<Posts>? get posts => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res, PostListState>;
  @useResult
  $Res call({List<Posts>? posts, String? error});
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res, $Val extends PostListState>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Posts>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostListStateCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$$_PostListStateCopyWith(
          _$_PostListState value, $Res Function(_$_PostListState) then) =
      __$$_PostListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Posts>? posts, String? error});
}

/// @nodoc
class __$$_PostListStateCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$_PostListState>
    implements _$$_PostListStateCopyWith<$Res> {
  __$$_PostListStateCopyWithImpl(
      _$_PostListState _value, $Res Function(_$_PostListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_PostListState(
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Posts>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostListState implements _PostListState {
  const _$_PostListState({final List<Posts>? posts, this.error})
      : _posts = posts;

  final List<Posts>? _posts;
  @override
  List<Posts>? get posts {
    final value = _posts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'PostListState(posts: $posts, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostListState &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_posts), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostListStateCopyWith<_$_PostListState> get copyWith =>
      __$$_PostListStateCopyWithImpl<_$_PostListState>(this, _$identity);
}

abstract class _PostListState implements PostListState {
  const factory _PostListState(
      {final List<Posts>? posts, final String? error}) = _$_PostListState;

  @override
  List<Posts>? get posts;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PostListStateCopyWith<_$_PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}
