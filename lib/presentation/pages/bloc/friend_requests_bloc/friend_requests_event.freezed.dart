// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_requests_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendRequestsEvent {
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
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendRequestsEventCopyWith<FriendRequestsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestsEventCopyWith<$Res> {
  factory $FriendRequestsEventCopyWith(
          FriendRequestsEvent value, $Res Function(FriendRequestsEvent) then) =
      _$FriendRequestsEventCopyWithImpl<$Res, FriendRequestsEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$FriendRequestsEventCopyWithImpl<$Res, $Val extends FriendRequestsEvent>
    implements $FriendRequestsEventCopyWith<$Res> {
  _$FriendRequestsEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FriendRequestsInitializeEventImplCopyWith<$Res>
    implements $FriendRequestsEventCopyWith<$Res> {
  factory _$$FriendRequestsInitializeEventImplCopyWith(
          _$FriendRequestsInitializeEventImpl value,
          $Res Function(_$FriendRequestsInitializeEventImpl) then) =
      __$$FriendRequestsInitializeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$FriendRequestsInitializeEventImplCopyWithImpl<$Res>
    extends _$FriendRequestsEventCopyWithImpl<$Res,
        _$FriendRequestsInitializeEventImpl>
    implements _$$FriendRequestsInitializeEventImplCopyWith<$Res> {
  __$$FriendRequestsInitializeEventImplCopyWithImpl(
      _$FriendRequestsInitializeEventImpl _value,
      $Res Function(_$FriendRequestsInitializeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FriendRequestsInitializeEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FriendRequestsInitializeEventImpl
    implements FriendRequestsInitializeEvent {
  const _$FriendRequestsInitializeEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'FriendRequestsEvent.initialize(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestsInitializeEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestsInitializeEventImplCopyWith<
          _$FriendRequestsInitializeEventImpl>
      get copyWith => __$$FriendRequestsInitializeEventImplCopyWithImpl<
          _$FriendRequestsInitializeEventImpl>(this, _$identity);

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
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsInitializeEvent implements FriendRequestsEvent {
  const factory FriendRequestsInitializeEvent(final String userId) =
      _$FriendRequestsInitializeEventImpl;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$FriendRequestsInitializeEventImplCopyWith<
          _$FriendRequestsInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
