// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coping_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CopingModel _$CopingModelFromJson(Map<String, dynamic> json) {
  return _CopingModel.fromJson(json);
}

/// @nodoc
mixin _$CopingModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this CopingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopingModelCopyWith<CopingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopingModelCopyWith<$Res> {
  factory $CopingModelCopyWith(
          CopingModel value, $Res Function(CopingModel) then) =
      _$CopingModelCopyWithImpl<$Res, CopingModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      String thumbnailUrl,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class _$CopingModelCopyWithImpl<$Res, $Val extends CopingModel>
    implements $CopingModelCopyWith<$Res> {
  _$CopingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CopingModelImplCopyWith<$Res>
    implements $CopingModelCopyWith<$Res> {
  factory _$$CopingModelImplCopyWith(
          _$CopingModelImpl value, $Res Function(_$CopingModelImpl) then) =
      __$$CopingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String thumbnailUrl,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class __$$CopingModelImplCopyWithImpl<$Res>
    extends _$CopingModelCopyWithImpl<$Res, _$CopingModelImpl>
    implements _$$CopingModelImplCopyWith<$Res> {
  __$$CopingModelImplCopyWithImpl(
      _$CopingModelImpl _value, $Res Function(_$CopingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_$CopingModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
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
class _$CopingModelImpl implements _CopingModel {
  const _$CopingModelImpl(
      {required this.title,
      required this.description,
      required this.thumbnailUrl,
      @TimestampConverter() required this.createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) this.id});

  factory _$CopingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopingModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String thumbnailUrl;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;

  @override
  String toString() {
    return 'CopingModel(title: $title, description: $description, thumbnailUrl: $thumbnailUrl, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopingModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, thumbnailUrl, createdAt, id);

  /// Create a copy of CopingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopingModelImplCopyWith<_$CopingModelImpl> get copyWith =>
      __$$CopingModelImplCopyWithImpl<_$CopingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopingModelImplToJson(
      this,
    );
  }
}

abstract class _CopingModel implements CopingModel {
  const factory _CopingModel(
      {required final String title,
      required final String description,
      required final String thumbnailUrl,
      @TimestampConverter() required final DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final String? id}) = _$CopingModelImpl;

  factory _CopingModel.fromJson(Map<String, dynamic> json) =
      _$CopingModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get thumbnailUrl;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;

  /// Create a copy of CopingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopingModelImplCopyWith<_$CopingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
