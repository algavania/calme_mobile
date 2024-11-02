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
  AsyncValue<List<JournalModel>> get journals =>
      throw _privateConstructorUsedError;
  AsyncValue<List<JournalAnswerModel>> get answers =>
      throw _privateConstructorUsedError;
  AsyncValue<List<QuestionModel>> get questions =>
      throw _privateConstructorUsedError;
  AsyncValue<bool> get saveAnswersStatus => throw _privateConstructorUsedError;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JournalStateCopyWith<JournalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalStateCopyWith<$Res> {
  factory $JournalStateCopyWith(
          JournalState value, $Res Function(JournalState) then) =
      _$JournalStateCopyWithImpl<$Res, JournalState>;
  @useResult
  $Res call(
      {AsyncValue<List<JournalModel>> journals,
      AsyncValue<List<JournalAnswerModel>> answers,
      AsyncValue<List<QuestionModel>> questions,
      AsyncValue<bool> saveAnswersStatus});

  $AsyncValueCopyWith<List<JournalModel>, $Res> get journals;
  $AsyncValueCopyWith<List<JournalAnswerModel>, $Res> get answers;
  $AsyncValueCopyWith<List<QuestionModel>, $Res> get questions;
  $AsyncValueCopyWith<bool, $Res> get saveAnswersStatus;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journals = null,
    Object? answers = null,
    Object? questions = null,
    Object? saveAnswersStatus = null,
  }) {
    return _then(_value.copyWith(
      journals: null == journals
          ? _value.journals
          : journals // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<JournalModel>>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<JournalAnswerModel>>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<QuestionModel>>,
      saveAnswersStatus: null == saveAnswersStatus
          ? _value.saveAnswersStatus
          : saveAnswersStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ) as $Val);
  }

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<JournalModel>, $Res> get journals {
    return $AsyncValueCopyWith<List<JournalModel>, $Res>(_value.journals,
        (value) {
      return _then(_value.copyWith(journals: value) as $Val);
    });
  }

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<JournalAnswerModel>, $Res> get answers {
    return $AsyncValueCopyWith<List<JournalAnswerModel>, $Res>(_value.answers,
        (value) {
      return _then(_value.copyWith(answers: value) as $Val);
    });
  }

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<QuestionModel>, $Res> get questions {
    return $AsyncValueCopyWith<List<QuestionModel>, $Res>(_value.questions,
        (value) {
      return _then(_value.copyWith(questions: value) as $Val);
    });
  }

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get saveAnswersStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.saveAnswersStatus, (value) {
      return _then(_value.copyWith(saveAnswersStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JournalStateImplCopyWith<$Res>
    implements $JournalStateCopyWith<$Res> {
  factory _$$JournalStateImplCopyWith(
          _$JournalStateImpl value, $Res Function(_$JournalStateImpl) then) =
      __$$JournalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<JournalModel>> journals,
      AsyncValue<List<JournalAnswerModel>> answers,
      AsyncValue<List<QuestionModel>> questions,
      AsyncValue<bool> saveAnswersStatus});

  @override
  $AsyncValueCopyWith<List<JournalModel>, $Res> get journals;
  @override
  $AsyncValueCopyWith<List<JournalAnswerModel>, $Res> get answers;
  @override
  $AsyncValueCopyWith<List<QuestionModel>, $Res> get questions;
  @override
  $AsyncValueCopyWith<bool, $Res> get saveAnswersStatus;
}

/// @nodoc
class __$$JournalStateImplCopyWithImpl<$Res>
    extends _$JournalStateCopyWithImpl<$Res, _$JournalStateImpl>
    implements _$$JournalStateImplCopyWith<$Res> {
  __$$JournalStateImplCopyWithImpl(
      _$JournalStateImpl _value, $Res Function(_$JournalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journals = null,
    Object? answers = null,
    Object? questions = null,
    Object? saveAnswersStatus = null,
  }) {
    return _then(_$JournalStateImpl(
      journals: null == journals
          ? _value.journals
          : journals // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<JournalModel>>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<JournalAnswerModel>>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<QuestionModel>>,
      saveAnswersStatus: null == saveAnswersStatus
          ? _value.saveAnswersStatus
          : saveAnswersStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

/// @nodoc

class _$JournalStateImpl implements _JournalState {
  const _$JournalStateImpl(
      {required this.journals,
      required this.answers,
      required this.questions,
      required this.saveAnswersStatus});

  @override
  final AsyncValue<List<JournalModel>> journals;
  @override
  final AsyncValue<List<JournalAnswerModel>> answers;
  @override
  final AsyncValue<List<QuestionModel>> questions;
  @override
  final AsyncValue<bool> saveAnswersStatus;

  @override
  String toString() {
    return 'JournalState(journals: $journals, answers: $answers, questions: $questions, saveAnswersStatus: $saveAnswersStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalStateImpl &&
            (identical(other.journals, journals) ||
                other.journals == journals) &&
            (identical(other.answers, answers) || other.answers == answers) &&
            (identical(other.questions, questions) ||
                other.questions == questions) &&
            (identical(other.saveAnswersStatus, saveAnswersStatus) ||
                other.saveAnswersStatus == saveAnswersStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, journals, answers, questions, saveAnswersStatus);

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalStateImplCopyWith<_$JournalStateImpl> get copyWith =>
      __$$JournalStateImplCopyWithImpl<_$JournalStateImpl>(this, _$identity);
}

abstract class _JournalState implements JournalState {
  const factory _JournalState(
      {required final AsyncValue<List<JournalModel>> journals,
      required final AsyncValue<List<JournalAnswerModel>> answers,
      required final AsyncValue<List<QuestionModel>> questions,
      required final AsyncValue<bool> saveAnswersStatus}) = _$JournalStateImpl;

  @override
  AsyncValue<List<JournalModel>> get journals;
  @override
  AsyncValue<List<JournalAnswerModel>> get answers;
  @override
  AsyncValue<List<QuestionModel>> get questions;
  @override
  AsyncValue<bool> get saveAnswersStatus;

  /// Create a copy of JournalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JournalStateImplCopyWith<_$JournalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
