// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JournalModel _$JournalModelFromJson(Map<String, dynamic> json) {
  return _JournalModel.fromJson(json);
}

/// @nodoc
mixin _$JournalModel {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this JournalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JournalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JournalModelCopyWith<JournalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalModelCopyWith<$Res> {
  factory $JournalModelCopyWith(
          JournalModel value, $Res Function(JournalModel) then) =
      _$JournalModelCopyWithImpl<$Res, JournalModel>;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String headline,
      String description,
      String thumbnailUrl,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class _$JournalModelCopyWithImpl<$Res, $Val extends JournalModel>
    implements $JournalModelCopyWith<$Res> {
  _$JournalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? headline = null,
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
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
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
abstract class _$$JournalModelImplCopyWith<$Res>
    implements $JournalModelCopyWith<$Res> {
  factory _$$JournalModelImplCopyWith(
          _$JournalModelImpl value, $Res Function(_$JournalModelImpl) then) =
      __$$JournalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String headline,
      String description,
      String thumbnailUrl,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class __$$JournalModelImplCopyWithImpl<$Res>
    extends _$JournalModelCopyWithImpl<$Res, _$JournalModelImpl>
    implements _$$JournalModelImplCopyWith<$Res> {
  __$$JournalModelImplCopyWithImpl(
      _$JournalModelImpl _value, $Res Function(_$JournalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? headline = null,
    Object? description = null,
    Object? thumbnailUrl = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_$JournalModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
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
class _$JournalModelImpl implements _JournalModel {
  const _$JournalModelImpl(
      {required this.title,
      required this.subtitle,
      required this.headline,
      required this.description,
      required this.thumbnailUrl,
      @TimestampConverter() required this.createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) this.id});

  factory _$JournalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournalModelImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String headline;
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
    return 'JournalModel(title: $title, subtitle: $subtitle, headline: $headline, description: $description, thumbnailUrl: $thumbnailUrl, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
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
  int get hashCode => Object.hash(runtimeType, title, subtitle, headline,
      description, thumbnailUrl, createdAt, id);

  /// Create a copy of JournalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalModelImplCopyWith<_$JournalModelImpl> get copyWith =>
      __$$JournalModelImplCopyWithImpl<_$JournalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournalModelImplToJson(
      this,
    );
  }
}

abstract class _JournalModel implements JournalModel {
  const factory _JournalModel(
      {required final String title,
      required final String subtitle,
      required final String headline,
      required final String description,
      required final String thumbnailUrl,
      @TimestampConverter() required final DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final String? id}) = _$JournalModelImpl;

  factory _JournalModel.fromJson(Map<String, dynamic> json) =
      _$JournalModelImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get headline;
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

  /// Create a copy of JournalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JournalModelImplCopyWith<_$JournalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JournalAnswerModel _$JournalAnswerModelFromJson(Map<String, dynamic> json) {
  return _JournalAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$JournalAnswerModel {
  String get answer => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get journalId => throw _privateConstructorUsedError;
  String get questionId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this JournalAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JournalAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JournalAnswerModelCopyWith<JournalAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalAnswerModelCopyWith<$Res> {
  factory $JournalAnswerModelCopyWith(
          JournalAnswerModel value, $Res Function(JournalAnswerModel) then) =
      _$JournalAnswerModelCopyWithImpl<$Res, JournalAnswerModel>;
  @useResult
  $Res call(
      {String answer,
      String userId,
      String journalId,
      String questionId,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class _$JournalAnswerModelCopyWithImpl<$Res, $Val extends JournalAnswerModel>
    implements $JournalAnswerModelCopyWith<$Res> {
  _$JournalAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournalAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? userId = null,
    Object? journalId = null,
    Object? questionId = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      journalId: null == journalId
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$JournalAnswerModelImplCopyWith<$Res>
    implements $JournalAnswerModelCopyWith<$Res> {
  factory _$$JournalAnswerModelImplCopyWith(_$JournalAnswerModelImpl value,
          $Res Function(_$JournalAnswerModelImpl) then) =
      __$$JournalAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String answer,
      String userId,
      String journalId,
      String questionId,
      @TimestampConverter() DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) String? id});
}

/// @nodoc
class __$$JournalAnswerModelImplCopyWithImpl<$Res>
    extends _$JournalAnswerModelCopyWithImpl<$Res, _$JournalAnswerModelImpl>
    implements _$$JournalAnswerModelImplCopyWith<$Res> {
  __$$JournalAnswerModelImplCopyWithImpl(_$JournalAnswerModelImpl _value,
      $Res Function(_$JournalAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? userId = null,
    Object? journalId = null,
    Object? questionId = null,
    Object? createdAt = null,
    Object? id = freezed,
  }) {
    return _then(_$JournalAnswerModelImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      journalId: null == journalId
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
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
class _$JournalAnswerModelImpl implements _JournalAnswerModel {
  const _$JournalAnswerModelImpl(
      {required this.answer,
      required this.userId,
      required this.journalId,
      required this.questionId,
      @TimestampConverter() required this.createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false) this.id});

  factory _$JournalAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournalAnswerModelImplFromJson(json);

  @override
  final String answer;
  @override
  final String userId;
  @override
  final String journalId;
  @override
  final String questionId;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;

  @override
  String toString() {
    return 'JournalAnswerModel(answer: $answer, userId: $userId, journalId: $journalId, questionId: $questionId, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalAnswerModelImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.journalId, journalId) ||
                other.journalId == journalId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, answer, userId, journalId, questionId, createdAt, id);

  /// Create a copy of JournalAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalAnswerModelImplCopyWith<_$JournalAnswerModelImpl> get copyWith =>
      __$$JournalAnswerModelImplCopyWithImpl<_$JournalAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournalAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _JournalAnswerModel implements JournalAnswerModel {
  const factory _JournalAnswerModel(
      {required final String answer,
      required final String userId,
      required final String journalId,
      required final String questionId,
      @TimestampConverter() required final DateTime createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final String? id}) = _$JournalAnswerModelImpl;

  factory _JournalAnswerModel.fromJson(Map<String, dynamic> json) =
      _$JournalAnswerModelImpl.fromJson;

  @override
  String get answer;
  @override
  String get userId;
  @override
  String get journalId;
  @override
  String get questionId;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;

  /// Create a copy of JournalAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JournalAnswerModelImplCopyWith<_$JournalAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
