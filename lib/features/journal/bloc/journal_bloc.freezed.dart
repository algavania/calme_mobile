// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JournalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllJournals,
    required TResult Function(String journalId) getJournalQuestions,
    required TResult Function(String journalId, List<JournalAnswerModel> list)
        saveAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllJournals,
    TResult? Function(String journalId)? getJournalQuestions,
    TResult? Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllJournals,
    TResult Function(String journalId)? getJournalQuestions,
    TResult Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllJournals value) getAllJournals,
    required TResult Function(_GetJournalQuestions value) getJournalQuestions,
    required TResult Function(_SaveAnswers value) saveAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllJournals value)? getAllJournals,
    TResult? Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult? Function(_SaveAnswers value)? saveAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllJournals value)? getAllJournals,
    TResult Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult Function(_SaveAnswers value)? saveAnswers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalEventCopyWith<$Res> {
  factory $JournalEventCopyWith(
          JournalEvent value, $Res Function(JournalEvent) then) =
      _$JournalEventCopyWithImpl<$Res, JournalEvent>;
}

/// @nodoc
class _$JournalEventCopyWithImpl<$Res, $Val extends JournalEvent>
    implements $JournalEventCopyWith<$Res> {
  _$JournalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$JournalEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'JournalEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllJournals,
    required TResult Function(String journalId) getJournalQuestions,
    required TResult Function(String journalId, List<JournalAnswerModel> list)
        saveAnswers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllJournals,
    TResult? Function(String journalId)? getJournalQuestions,
    TResult? Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllJournals,
    TResult Function(String journalId)? getJournalQuestions,
    TResult Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllJournals value) getAllJournals,
    required TResult Function(_GetJournalQuestions value) getJournalQuestions,
    required TResult Function(_SaveAnswers value) saveAnswers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllJournals value)? getAllJournals,
    TResult? Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult? Function(_SaveAnswers value)? saveAnswers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllJournals value)? getAllJournals,
    TResult Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult Function(_SaveAnswers value)? saveAnswers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements JournalEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllJournalsImplCopyWith<$Res> {
  factory _$$GetAllJournalsImplCopyWith(_$GetAllJournalsImpl value,
          $Res Function(_$GetAllJournalsImpl) then) =
      __$$GetAllJournalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllJournalsImplCopyWithImpl<$Res>
    extends _$JournalEventCopyWithImpl<$Res, _$GetAllJournalsImpl>
    implements _$$GetAllJournalsImplCopyWith<$Res> {
  __$$GetAllJournalsImplCopyWithImpl(
      _$GetAllJournalsImpl _value, $Res Function(_$GetAllJournalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllJournalsImpl implements _GetAllJournals {
  const _$GetAllJournalsImpl();

  @override
  String toString() {
    return 'JournalEvent.getAllJournals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllJournalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllJournals,
    required TResult Function(String journalId) getJournalQuestions,
    required TResult Function(String journalId, List<JournalAnswerModel> list)
        saveAnswers,
  }) {
    return getAllJournals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllJournals,
    TResult? Function(String journalId)? getJournalQuestions,
    TResult? Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
  }) {
    return getAllJournals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllJournals,
    TResult Function(String journalId)? getJournalQuestions,
    TResult Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
    required TResult orElse(),
  }) {
    if (getAllJournals != null) {
      return getAllJournals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllJournals value) getAllJournals,
    required TResult Function(_GetJournalQuestions value) getJournalQuestions,
    required TResult Function(_SaveAnswers value) saveAnswers,
  }) {
    return getAllJournals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllJournals value)? getAllJournals,
    TResult? Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult? Function(_SaveAnswers value)? saveAnswers,
  }) {
    return getAllJournals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllJournals value)? getAllJournals,
    TResult Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult Function(_SaveAnswers value)? saveAnswers,
    required TResult orElse(),
  }) {
    if (getAllJournals != null) {
      return getAllJournals(this);
    }
    return orElse();
  }
}

abstract class _GetAllJournals implements JournalEvent {
  const factory _GetAllJournals() = _$GetAllJournalsImpl;
}

/// @nodoc
abstract class _$$GetJournalQuestionsImplCopyWith<$Res> {
  factory _$$GetJournalQuestionsImplCopyWith(_$GetJournalQuestionsImpl value,
          $Res Function(_$GetJournalQuestionsImpl) then) =
      __$$GetJournalQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String journalId});
}

/// @nodoc
class __$$GetJournalQuestionsImplCopyWithImpl<$Res>
    extends _$JournalEventCopyWithImpl<$Res, _$GetJournalQuestionsImpl>
    implements _$$GetJournalQuestionsImplCopyWith<$Res> {
  __$$GetJournalQuestionsImplCopyWithImpl(_$GetJournalQuestionsImpl _value,
      $Res Function(_$GetJournalQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journalId = null,
  }) {
    return _then(_$GetJournalQuestionsImpl(
      null == journalId
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetJournalQuestionsImpl implements _GetJournalQuestions {
  const _$GetJournalQuestionsImpl(this.journalId);

  @override
  final String journalId;

  @override
  String toString() {
    return 'JournalEvent.getJournalQuestions(journalId: $journalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJournalQuestionsImpl &&
            (identical(other.journalId, journalId) ||
                other.journalId == journalId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, journalId);

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetJournalQuestionsImplCopyWith<_$GetJournalQuestionsImpl> get copyWith =>
      __$$GetJournalQuestionsImplCopyWithImpl<_$GetJournalQuestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllJournals,
    required TResult Function(String journalId) getJournalQuestions,
    required TResult Function(String journalId, List<JournalAnswerModel> list)
        saveAnswers,
  }) {
    return getJournalQuestions(journalId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllJournals,
    TResult? Function(String journalId)? getJournalQuestions,
    TResult? Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
  }) {
    return getJournalQuestions?.call(journalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllJournals,
    TResult Function(String journalId)? getJournalQuestions,
    TResult Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
    required TResult orElse(),
  }) {
    if (getJournalQuestions != null) {
      return getJournalQuestions(journalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllJournals value) getAllJournals,
    required TResult Function(_GetJournalQuestions value) getJournalQuestions,
    required TResult Function(_SaveAnswers value) saveAnswers,
  }) {
    return getJournalQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllJournals value)? getAllJournals,
    TResult? Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult? Function(_SaveAnswers value)? saveAnswers,
  }) {
    return getJournalQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllJournals value)? getAllJournals,
    TResult Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult Function(_SaveAnswers value)? saveAnswers,
    required TResult orElse(),
  }) {
    if (getJournalQuestions != null) {
      return getJournalQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetJournalQuestions implements JournalEvent {
  const factory _GetJournalQuestions(final String journalId) =
      _$GetJournalQuestionsImpl;

  String get journalId;

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetJournalQuestionsImplCopyWith<_$GetJournalQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveAnswersImplCopyWith<$Res> {
  factory _$$SaveAnswersImplCopyWith(
          _$SaveAnswersImpl value, $Res Function(_$SaveAnswersImpl) then) =
      __$$SaveAnswersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String journalId, List<JournalAnswerModel> list});
}

/// @nodoc
class __$$SaveAnswersImplCopyWithImpl<$Res>
    extends _$JournalEventCopyWithImpl<$Res, _$SaveAnswersImpl>
    implements _$$SaveAnswersImplCopyWith<$Res> {
  __$$SaveAnswersImplCopyWithImpl(
      _$SaveAnswersImpl _value, $Res Function(_$SaveAnswersImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journalId = null,
    Object? list = null,
  }) {
    return _then(_$SaveAnswersImpl(
      null == journalId
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as String,
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JournalAnswerModel>,
    ));
  }
}

/// @nodoc

class _$SaveAnswersImpl implements _SaveAnswers {
  const _$SaveAnswersImpl(this.journalId, final List<JournalAnswerModel> list)
      : _list = list;

  @override
  final String journalId;
  final List<JournalAnswerModel> _list;
  @override
  List<JournalAnswerModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'JournalEvent.saveAnswers(journalId: $journalId, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAnswersImpl &&
            (identical(other.journalId, journalId) ||
                other.journalId == journalId) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, journalId, const DeepCollectionEquality().hash(_list));

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAnswersImplCopyWith<_$SaveAnswersImpl> get copyWith =>
      __$$SaveAnswersImplCopyWithImpl<_$SaveAnswersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllJournals,
    required TResult Function(String journalId) getJournalQuestions,
    required TResult Function(String journalId, List<JournalAnswerModel> list)
        saveAnswers,
  }) {
    return saveAnswers(journalId, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllJournals,
    TResult? Function(String journalId)? getJournalQuestions,
    TResult? Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
  }) {
    return saveAnswers?.call(journalId, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllJournals,
    TResult Function(String journalId)? getJournalQuestions,
    TResult Function(String journalId, List<JournalAnswerModel> list)?
        saveAnswers,
    required TResult orElse(),
  }) {
    if (saveAnswers != null) {
      return saveAnswers(journalId, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllJournals value) getAllJournals,
    required TResult Function(_GetJournalQuestions value) getJournalQuestions,
    required TResult Function(_SaveAnswers value) saveAnswers,
  }) {
    return saveAnswers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllJournals value)? getAllJournals,
    TResult? Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult? Function(_SaveAnswers value)? saveAnswers,
  }) {
    return saveAnswers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllJournals value)? getAllJournals,
    TResult Function(_GetJournalQuestions value)? getJournalQuestions,
    TResult Function(_SaveAnswers value)? saveAnswers,
    required TResult orElse(),
  }) {
    if (saveAnswers != null) {
      return saveAnswers(this);
    }
    return orElse();
  }
}

abstract class _SaveAnswers implements JournalEvent {
  const factory _SaveAnswers(
          final String journalId, final List<JournalAnswerModel> list) =
      _$SaveAnswersImpl;

  String get journalId;
  List<JournalAnswerModel> get list;

  /// Create a copy of JournalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveAnswersImplCopyWith<_$SaveAnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JournalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalStateCopyWith<$Res> {
  factory $JournalStateCopyWith(
          JournalState value, $Res Function(JournalState) then) =
      _$JournalStateCopyWithImpl<$Res, JournalState>;
}

/// @nodoc
class _$JournalStateCopyWithImpl<$Res, $Val extends JournalState>
    implements $JournalStateCopyWith<$Res> {
  _$JournalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'JournalState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JournalState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'JournalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements JournalState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'JournalState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements JournalState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JournalModel> list});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$LoadedImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JournalModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<JournalModel> list) : _list = list;

  final List<JournalModel> _list;
  @override
  List<JournalModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'JournalState.loaded(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return loaded(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return loaded?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements JournalState {
  const factory _Loaded(final List<JournalModel> list) = _$LoadedImpl;

  List<JournalModel> get list;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'JournalState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements JournalState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$AnswersLoadedImplCopyWith<$Res> {
  factory _$$AnswersLoadedImplCopyWith(
          _$AnswersLoadedImpl value, $Res Function(_$AnswersLoadedImpl) then) =
      __$$AnswersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JournalAnswerModel> list});
}

/// @nodoc
class __$$AnswersLoadedImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$AnswersLoadedImpl>
    implements _$$AnswersLoadedImplCopyWith<$Res> {
  __$$AnswersLoadedImplCopyWithImpl(
      _$AnswersLoadedImpl _value, $Res Function(_$AnswersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$AnswersLoadedImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JournalAnswerModel>,
    ));
  }
}

/// @nodoc

class _$AnswersLoadedImpl implements _AnswersLoaded {
  const _$AnswersLoadedImpl(final List<JournalAnswerModel> list) : _list = list;

  final List<JournalAnswerModel> _list;
  @override
  List<JournalAnswerModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'JournalState.answersLoaded(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswersLoadedImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswersLoadedImplCopyWith<_$AnswersLoadedImpl> get copyWith =>
      __$$AnswersLoadedImplCopyWithImpl<_$AnswersLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return answersLoaded(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return answersLoaded?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (answersLoaded != null) {
      return answersLoaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return answersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return answersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (answersLoaded != null) {
      return answersLoaded(this);
    }
    return orElse();
  }
}

abstract class _AnswersLoaded implements JournalState {
  const factory _AnswersLoaded(final List<JournalAnswerModel> list) =
      _$AnswersLoadedImpl;

  List<JournalAnswerModel> get list;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswersLoadedImplCopyWith<_$AnswersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionsLoadedImplCopyWith<$Res> {
  factory _$$QuestionsLoadedImplCopyWith(_$QuestionsLoadedImpl value,
          $Res Function(_$QuestionsLoadedImpl) then) =
      __$$QuestionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionModel> list, List<JournalAnswerModel> answers});
}

/// @nodoc
class __$$QuestionsLoadedImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$QuestionsLoadedImpl>
    implements _$$QuestionsLoadedImplCopyWith<$Res> {
  __$$QuestionsLoadedImplCopyWithImpl(
      _$QuestionsLoadedImpl _value, $Res Function(_$QuestionsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? answers = null,
  }) {
    return _then(_$QuestionsLoadedImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<JournalAnswerModel>,
    ));
  }
}

/// @nodoc

class _$QuestionsLoadedImpl implements _QuestionsLoaded {
  const _$QuestionsLoadedImpl(
      final List<QuestionModel> list, final List<JournalAnswerModel> answers)
      : _list = list,
        _answers = answers;

  final List<QuestionModel> _list;
  @override
  List<QuestionModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  final List<JournalAnswerModel> _answers;
  @override
  List<JournalAnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'JournalState.questionsLoaded(list: $list, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsLoadedImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsLoadedImplCopyWith<_$QuestionsLoadedImpl> get copyWith =>
      __$$QuestionsLoadedImplCopyWithImpl<_$QuestionsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<JournalModel> list) loaded,
    required TResult Function() success,
    required TResult Function(List<JournalAnswerModel> list) answersLoaded,
    required TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)
        questionsLoaded,
  }) {
    return questionsLoaded(list, answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<JournalModel> list)? loaded,
    TResult? Function()? success,
    TResult? Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult? Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
  }) {
    return questionsLoaded?.call(list, answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<JournalModel> list)? loaded,
    TResult Function()? success,
    TResult Function(List<JournalAnswerModel> list)? answersLoaded,
    TResult Function(
            List<QuestionModel> list, List<JournalAnswerModel> answers)?
        questionsLoaded,
    required TResult orElse(),
  }) {
    if (questionsLoaded != null) {
      return questionsLoaded(list, answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_AnswersLoaded value) answersLoaded,
    required TResult Function(_QuestionsLoaded value) questionsLoaded,
  }) {
    return questionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_AnswersLoaded value)? answersLoaded,
    TResult? Function(_QuestionsLoaded value)? questionsLoaded,
  }) {
    return questionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_AnswersLoaded value)? answersLoaded,
    TResult Function(_QuestionsLoaded value)? questionsLoaded,
    required TResult orElse(),
  }) {
    if (questionsLoaded != null) {
      return questionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _QuestionsLoaded implements JournalState {
  const factory _QuestionsLoaded(final List<QuestionModel> list,
      final List<JournalAnswerModel> answers) = _$QuestionsLoadedImpl;

  List<QuestionModel> get list;
  List<JournalAnswerModel> get answers;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionsLoadedImplCopyWith<_$QuestionsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
