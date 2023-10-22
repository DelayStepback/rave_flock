// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeetDataEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeetDataEventCopyWith<MeetDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetDataEventCopyWith<$Res> {
  factory $MeetDataEventCopyWith(
          MeetDataEvent value, $Res Function(MeetDataEvent) then) =
      _$MeetDataEventCopyWithImpl<$Res, MeetDataEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$MeetDataEventCopyWithImpl<$Res, $Val extends MeetDataEvent>
    implements $MeetDataEventCopyWith<$Res> {
  _$MeetDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetDataInitializeEventImplCopyWith<$Res>
    implements $MeetDataEventCopyWith<$Res> {
  factory _$$MeetDataInitializeEventImplCopyWith(
          _$MeetDataInitializeEventImpl value,
          $Res Function(_$MeetDataInitializeEventImpl) then) =
      __$$MeetDataInitializeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$MeetDataInitializeEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataInitializeEventImpl>
    implements _$$MeetDataInitializeEventImplCopyWith<$Res> {
  __$$MeetDataInitializeEventImplCopyWithImpl(
      _$MeetDataInitializeEventImpl _value,
      $Res Function(_$MeetDataInitializeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$MeetDataInitializeEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetDataInitializeEventImpl implements MeetDataInitializeEvent {
  const _$MeetDataInitializeEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'MeetDataEvent.initialize(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataInitializeEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataInitializeEventImplCopyWith<_$MeetDataInitializeEventImpl>
      get copyWith => __$$MeetDataInitializeEventImplCopyWithImpl<
          _$MeetDataInitializeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
  }) {
    return initialize(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
  }) {
    return initialize?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class MeetDataInitializeEvent implements MeetDataEvent {
  const factory MeetDataInitializeEvent(final String userId) =
      _$MeetDataInitializeEventImpl;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$MeetDataInitializeEventImplCopyWith<_$MeetDataInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
