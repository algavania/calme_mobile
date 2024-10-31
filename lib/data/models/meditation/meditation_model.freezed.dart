// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meditation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeditationModel _$MeditationModelFromJson(Map<String, dynamic> json) {
  return _MeditationModel.fromJson(json);
}

/// @nodoc
mixin _$MeditationModel {
  String get colorCode => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<SessionModel> get sessions => throw _privateConstructorUsedError;

  /// Serializes this MeditationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeditationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeditationModelCopyWith<MeditationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationModelCopyWith<$Res> {
  factory $MeditationModelCopyWith(
          MeditationModel value, $Res Function(MeditationModel) then) =
      _$MeditationModelCopyWithImpl<$Res, MeditationModel>;
  @useResult
  $Res call(
      {String colorCode,
      String subtitle,
      String thumbnailUrl,
      String title,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      List<SessionModel> sessions});
}

/// @nodoc
class _$MeditationModelCopyWithImpl<$Res, $Val extends MeditationModel>
    implements $MeditationModelCopyWith<$Res> {
  _$MeditationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeditationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorCode = null,
    Object? subtitle = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? createdAt = null,
    Object? id = freezed,
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeditationModelImplCopyWith<$Res>
    implements $MeditationModelCopyWith<$Res> {
  factory _$$MeditationModelImplCopyWith(_$MeditationModelImpl value,
          $Res Function(_$MeditationModelImpl) then) =
      __$$MeditationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String colorCode,
      String subtitle,
      String thumbnailUrl,
      String title,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      List<SessionModel> sessions});
}

/// @nodoc
class __$$MeditationModelImplCopyWithImpl<$Res>
    extends _$MeditationModelCopyWithImpl<$Res, _$MeditationModelImpl>
    implements _$$MeditationModelImplCopyWith<$Res> {
  __$$MeditationModelImplCopyWithImpl(
      _$MeditationModelImpl _value, $Res Function(_$MeditationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeditationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorCode = null,
    Object? subtitle = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? createdAt = null,
    Object? id = freezed,
    Object? sessions = null,
  }) {
    return _then(_$MeditationModelImpl(
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
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
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeditationModelImpl implements _MeditationModel {
  const _$MeditationModelImpl(
      {required this.colorCode,
      required this.subtitle,
      required this.thumbnailUrl,
      required this.title,
      @TimestampConverter() required this.createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) this.id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final List<SessionModel> sessions = const []})
      : _sessions = sessions;

  factory _$MeditationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeditationModelImplFromJson(json);

  @override
  final String colorCode;
  @override
  final String subtitle;
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
  final List<SessionModel> _sessions;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<SessionModel> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'MeditationModel(colorCode: $colorCode, subtitle: $subtitle, thumbnailUrl: $thumbnailUrl, title: $title, createdAt: $createdAt, id: $id, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeditationModelImpl &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      colorCode,
      subtitle,
      thumbnailUrl,
      title,
      createdAt,
      id,
      const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of MeditationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeditationModelImplCopyWith<_$MeditationModelImpl> get copyWith =>
      __$$MeditationModelImplCopyWithImpl<_$MeditationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeditationModelImplToJson(
      this,
    );
  }
}

abstract class _MeditationModel implements MeditationModel {
  const factory _MeditationModel(
      {required final String colorCode,
      required final String subtitle,
      required final String thumbnailUrl,
      required final String title,
      @TimestampConverter() required final DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final List<SessionModel> sessions}) = _$MeditationModelImpl;

  factory _MeditationModel.fromJson(Map<String, dynamic> json) =
      _$MeditationModelImpl.fromJson;

  @override
  String get colorCode;
  @override
  String get subtitle;
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
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<SessionModel> get sessions;

  /// Create a copy of MeditationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeditationModelImplCopyWith<_$MeditationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
