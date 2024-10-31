// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ArticleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {String author,
      String content,
      String thumbnailUrl,
      String title,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleModelImplCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$ArticleModelImplCopyWith(
          _$ArticleModelImpl value, $Res Function(_$ArticleModelImpl) then) =
      __$$ArticleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String content,
      String thumbnailUrl,
      String title,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class __$$ArticleModelImplCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$ArticleModelImpl>
    implements _$$ArticleModelImplCopyWith<$Res> {
  __$$ArticleModelImplCopyWithImpl(
      _$ArticleModelImpl _value, $Res Function(_$ArticleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_$ArticleModelImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleModelImpl implements _ArticleModel {
  const _$ArticleModelImpl(
      {required this.author,
      required this.content,
      required this.thumbnailUrl,
      required this.title,
      @TimestampConverter() required this.createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) this.id});

  factory _$ArticleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleModelImplFromJson(json);

  @override
  final String author;
  @override
  final String content;
  @override
  final String thumbnailUrl;
  @override
  final String title;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;

  @override
  String toString() {
    return 'ArticleModel(author: $author, content: $content, thumbnailUrl: $thumbnailUrl, title: $title, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleModelImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, author, content, thumbnailUrl, title, createdAt, id);

  /// Create a copy of ArticleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      __$$ArticleModelImplCopyWithImpl<_$ArticleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
      {required final String author,
      required final String content,
      required final String thumbnailUrl,
      required final String title,
      @TimestampConverter() required final DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final String? id}) = _$ArticleModelImpl;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$ArticleModelImpl.fromJson;

  @override
  String get author;
  @override
  String get content;
  @override
  String get thumbnailUrl;
  @override
  String get title;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;

  /// Create a copy of ArticleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
