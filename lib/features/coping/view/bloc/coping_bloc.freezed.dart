// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coping_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CopingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllCopings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllCopings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllCopings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllCopings value) getAllCopings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllCopings value)? getAllCopings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllCopings value)? getAllCopings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopingEventCopyWith<$Res> {
  factory $CopingEventCopyWith(
          CopingEvent value, $Res Function(CopingEvent) then) =
      _$CopingEventCopyWithImpl<$Res, CopingEvent>;
}

/// @nodoc
class _$CopingEventCopyWithImpl<$Res, $Val extends CopingEvent>
    implements $CopingEventCopyWith<$Res> {
  _$CopingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopingEvent
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
    extends _$CopingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CopingEvent.started()';
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
    required TResult Function() getAllCopings,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllCopings,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllCopings,
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
    required TResult Function(_GetAllCopings value) getAllCopings,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllCopings value)? getAllCopings,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllCopings value)? getAllCopings,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CopingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllCopingsImplCopyWith<$Res> {
  factory _$$GetAllCopingsImplCopyWith(
          _$GetAllCopingsImpl value, $Res Function(_$GetAllCopingsImpl) then) =
      __$$GetAllCopingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCopingsImplCopyWithImpl<$Res>
    extends _$CopingEventCopyWithImpl<$Res, _$GetAllCopingsImpl>
    implements _$$GetAllCopingsImplCopyWith<$Res> {
  __$$GetAllCopingsImplCopyWithImpl(
      _$GetAllCopingsImpl _value, $Res Function(_$GetAllCopingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllCopingsImpl implements _GetAllCopings {
  const _$GetAllCopingsImpl();

  @override
  String toString() {
    return 'CopingEvent.getAllCopings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCopingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllCopings,
  }) {
    return getAllCopings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllCopings,
  }) {
    return getAllCopings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllCopings,
    required TResult orElse(),
  }) {
    if (getAllCopings != null) {
      return getAllCopings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllCopings value) getAllCopings,
  }) {
    return getAllCopings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllCopings value)? getAllCopings,
  }) {
    return getAllCopings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllCopings value)? getAllCopings,
    required TResult orElse(),
  }) {
    if (getAllCopings != null) {
      return getAllCopings(this);
    }
    return orElse();
  }
}

abstract class _GetAllCopings implements CopingEvent {
  const factory _GetAllCopings() = _$GetAllCopingsImpl;
}

/// @nodoc
mixin _$CopingState {
  AsyncValue<List<CopingModel>> get copings =>
      throw _privateConstructorUsedError;

  /// Create a copy of CopingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopingStateCopyWith<CopingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopingStateCopyWith<$Res> {
  factory $CopingStateCopyWith(
          CopingState value, $Res Function(CopingState) then) =
      _$CopingStateCopyWithImpl<$Res, CopingState>;
  @useResult
  $Res call({AsyncValue<List<CopingModel>> copings});

  $AsyncValueCopyWith<List<CopingModel>, $Res> get copings;
}

/// @nodoc
class _$CopingStateCopyWithImpl<$Res, $Val extends CopingState>
    implements $CopingStateCopyWith<$Res> {
  _$CopingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copings = null,
  }) {
    return _then(_value.copyWith(
      copings: null == copings
          ? _value.copings
          : copings // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CopingModel>>,
    ) as $Val);
  }

  /// Create a copy of CopingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<CopingModel>, $Res> get copings {
    return $AsyncValueCopyWith<List<CopingModel>, $Res>(_value.copings,
        (value) {
      return _then(_value.copyWith(copings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CopingStateImplCopyWith<$Res>
    implements $CopingStateCopyWith<$Res> {
  factory _$$CopingStateImplCopyWith(
          _$CopingStateImpl value, $Res Function(_$CopingStateImpl) then) =
      __$$CopingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<CopingModel>> copings});

  @override
  $AsyncValueCopyWith<List<CopingModel>, $Res> get copings;
}

/// @nodoc
class __$$CopingStateImplCopyWithImpl<$Res>
    extends _$CopingStateCopyWithImpl<$Res, _$CopingStateImpl>
    implements _$$CopingStateImplCopyWith<$Res> {
  __$$CopingStateImplCopyWithImpl(
      _$CopingStateImpl _value, $Res Function(_$CopingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copings = null,
  }) {
    return _then(_$CopingStateImpl(
      copings: null == copings
          ? _value.copings
          : copings // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CopingModel>>,
    ));
  }
}

/// @nodoc

class _$CopingStateImpl implements _CopingState {
  const _$CopingStateImpl({required this.copings});

  @override
  final AsyncValue<List<CopingModel>> copings;

  @override
  String toString() {
    return 'CopingState(copings: $copings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopingStateImpl &&
            (identical(other.copings, copings) || other.copings == copings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, copings);

  /// Create a copy of CopingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopingStateImplCopyWith<_$CopingStateImpl> get copyWith =>
      __$$CopingStateImplCopyWithImpl<_$CopingStateImpl>(this, _$identity);
}

abstract class _CopingState implements CopingState {
  const factory _CopingState(
          {required final AsyncValue<List<CopingModel>> copings}) =
      _$CopingStateImpl;

  @override
  AsyncValue<List<CopingModel>> get copings;

  /// Create a copy of CopingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopingStateImplCopyWith<_$CopingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
