// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meditation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeditationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllMeditations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllMeditations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllMeditations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllMeditations value) getAllMeditations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllMeditations value)? getAllMeditations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllMeditations value)? getAllMeditations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationEventCopyWith<$Res> {
  factory $MeditationEventCopyWith(
          MeditationEvent value, $Res Function(MeditationEvent) then) =
      _$MeditationEventCopyWithImpl<$Res, MeditationEvent>;
}

/// @nodoc
class _$MeditationEventCopyWithImpl<$Res, $Val extends MeditationEvent>
    implements $MeditationEventCopyWith<$Res> {
  _$MeditationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeditationEvent
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
    extends _$MeditationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeditationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MeditationEvent.started()';
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
    required TResult Function() getAllMeditations,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllMeditations,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllMeditations,
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
    required TResult Function(_GetAllMeditations value) getAllMeditations,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllMeditations value)? getAllMeditations,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllMeditations value)? getAllMeditations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MeditationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllMeditationsImplCopyWith<$Res> {
  factory _$$GetAllMeditationsImplCopyWith(_$GetAllMeditationsImpl value,
          $Res Function(_$GetAllMeditationsImpl) then) =
      __$$GetAllMeditationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllMeditationsImplCopyWithImpl<$Res>
    extends _$MeditationEventCopyWithImpl<$Res, _$GetAllMeditationsImpl>
    implements _$$GetAllMeditationsImplCopyWith<$Res> {
  __$$GetAllMeditationsImplCopyWithImpl(_$GetAllMeditationsImpl _value,
      $Res Function(_$GetAllMeditationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeditationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllMeditationsImpl implements _GetAllMeditations {
  const _$GetAllMeditationsImpl();

  @override
  String toString() {
    return 'MeditationEvent.getAllMeditations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllMeditationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllMeditations,
  }) {
    return getAllMeditations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllMeditations,
  }) {
    return getAllMeditations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllMeditations,
    required TResult orElse(),
  }) {
    if (getAllMeditations != null) {
      return getAllMeditations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllMeditations value) getAllMeditations,
  }) {
    return getAllMeditations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllMeditations value)? getAllMeditations,
  }) {
    return getAllMeditations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllMeditations value)? getAllMeditations,
    required TResult orElse(),
  }) {
    if (getAllMeditations != null) {
      return getAllMeditations(this);
    }
    return orElse();
  }
}

abstract class _GetAllMeditations implements MeditationEvent {
  const factory _GetAllMeditations() = _$GetAllMeditationsImpl;
}

/// @nodoc
mixin _$MeditationState {
  AsyncValue<List<MeditationModel>> get meditations =>
      throw _privateConstructorUsedError;

  /// Create a copy of MeditationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeditationStateCopyWith<MeditationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationStateCopyWith<$Res> {
  factory $MeditationStateCopyWith(
          MeditationState value, $Res Function(MeditationState) then) =
      _$MeditationStateCopyWithImpl<$Res, MeditationState>;
  @useResult
  $Res call({AsyncValue<List<MeditationModel>> meditations});

  $AsyncValueCopyWith<List<MeditationModel>, $Res> get meditations;
}

/// @nodoc
class _$MeditationStateCopyWithImpl<$Res, $Val extends MeditationState>
    implements $MeditationStateCopyWith<$Res> {
  _$MeditationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeditationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meditations = null,
  }) {
    return _then(_value.copyWith(
      meditations: null == meditations
          ? _value.meditations
          : meditations // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<MeditationModel>>,
    ) as $Val);
  }

  /// Create a copy of MeditationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<MeditationModel>, $Res> get meditations {
    return $AsyncValueCopyWith<List<MeditationModel>, $Res>(_value.meditations,
        (value) {
      return _then(_value.copyWith(meditations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeditationStateImplCopyWith<$Res>
    implements $MeditationStateCopyWith<$Res> {
  factory _$$MeditationStateImplCopyWith(_$MeditationStateImpl value,
          $Res Function(_$MeditationStateImpl) then) =
      __$$MeditationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<MeditationModel>> meditations});

  @override
  $AsyncValueCopyWith<List<MeditationModel>, $Res> get meditations;
}

/// @nodoc
class __$$MeditationStateImplCopyWithImpl<$Res>
    extends _$MeditationStateCopyWithImpl<$Res, _$MeditationStateImpl>
    implements _$$MeditationStateImplCopyWith<$Res> {
  __$$MeditationStateImplCopyWithImpl(
      _$MeditationStateImpl _value, $Res Function(_$MeditationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeditationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meditations = null,
  }) {
    return _then(_$MeditationStateImpl(
      meditations: null == meditations
          ? _value.meditations
          : meditations // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<MeditationModel>>,
    ));
  }
}

/// @nodoc

class _$MeditationStateImpl implements _MeditationState {
  const _$MeditationStateImpl({required this.meditations});

  @override
  final AsyncValue<List<MeditationModel>> meditations;

  @override
  String toString() {
    return 'MeditationState(meditations: $meditations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeditationStateImpl &&
            (identical(other.meditations, meditations) ||
                other.meditations == meditations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meditations);

  /// Create a copy of MeditationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeditationStateImplCopyWith<_$MeditationStateImpl> get copyWith =>
      __$$MeditationStateImplCopyWithImpl<_$MeditationStateImpl>(
          this, _$identity);
}

abstract class _MeditationState implements MeditationState {
  const factory _MeditationState(
          {required final AsyncValue<List<MeditationModel>> meditations}) =
      _$MeditationStateImpl;

  @override
  AsyncValue<List<MeditationModel>> get meditations;

  /// Create a copy of MeditationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeditationStateImplCopyWith<_$MeditationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
