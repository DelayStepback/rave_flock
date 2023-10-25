// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendsDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) removeFriend,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? removeFriend,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? removeFriend,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsDataInitializeEvent value) initialize,
    required TResult Function(DeleteFriendEvent value) removeFriend,
    required TResult Function(FriendsDataDisposeEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendsDataInitializeEvent value)? initialize,
    TResult? Function(DeleteFriendEvent value)? removeFriend,
    TResult? Function(FriendsDataDisposeEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsDataInitializeEvent value)? initialize,
    TResult Function(DeleteFriendEvent value)? removeFriend,
    TResult Function(FriendsDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsDataEventCopyWith<$Res> {
  factory $FriendsDataEventCopyWith(
          FriendsDataEvent value, $Res Function(FriendsDataEvent) then) =
      _$FriendsDataEventCopyWithImpl<$Res, FriendsDataEvent>;
}

/// @nodoc
class _$FriendsDataEventCopyWithImpl<$Res, $Val extends FriendsDataEvent>
    implements $FriendsDataEventCopyWith<$Res> {
  _$FriendsDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FriendsDataInitializeEventImplCopyWith<$Res> {
  factory _$$FriendsDataInitializeEventImplCopyWith(
          _$FriendsDataInitializeEventImpl value,
          $Res Function(_$FriendsDataInitializeEventImpl) then) =
      __$$FriendsDataInitializeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$FriendsDataInitializeEventImplCopyWithImpl<$Res>
    extends _$FriendsDataEventCopyWithImpl<$Res,
        _$FriendsDataInitializeEventImpl>
    implements _$$FriendsDataInitializeEventImplCopyWith<$Res> {
  __$$FriendsDataInitializeEventImplCopyWithImpl(
      _$FriendsDataInitializeEventImpl _value,
      $Res Function(_$FriendsDataInitializeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FriendsDataInitializeEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FriendsDataInitializeEventImpl implements FriendsDataInitializeEvent {
  const _$FriendsDataInitializeEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'FriendsDataEvent.initialize(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendsDataInitializeEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendsDataInitializeEventImplCopyWith<_$FriendsDataInitializeEventImpl>
      get copyWith => __$$FriendsDataInitializeEventImplCopyWithImpl<
          _$FriendsDataInitializeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) removeFriend,
    required TResult Function() dispose,
  }) {
    return initialize(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? removeFriend,
    TResult? Function()? dispose,
  }) {
    return initialize?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? removeFriend,
    TResult Function()? dispose,
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
    required TResult Function(FriendsDataInitializeEvent value) initialize,
    required TResult Function(DeleteFriendEvent value) removeFriend,
    required TResult Function(FriendsDataDisposeEvent value) dispose,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendsDataInitializeEvent value)? initialize,
    TResult? Function(DeleteFriendEvent value)? removeFriend,
    TResult? Function(FriendsDataDisposeEvent value)? dispose,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsDataInitializeEvent value)? initialize,
    TResult Function(DeleteFriendEvent value)? removeFriend,
    TResult Function(FriendsDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class FriendsDataInitializeEvent implements FriendsDataEvent {
  const factory FriendsDataInitializeEvent(final String userId) =
      _$FriendsDataInitializeEventImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$FriendsDataInitializeEventImplCopyWith<_$FriendsDataInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFriendEventImplCopyWith<$Res> {
  factory _$$DeleteFriendEventImplCopyWith(_$DeleteFriendEventImpl value,
          $Res Function(_$DeleteFriendEventImpl) then) =
      __$$DeleteFriendEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String friendId});
}

/// @nodoc
class __$$DeleteFriendEventImplCopyWithImpl<$Res>
    extends _$FriendsDataEventCopyWithImpl<$Res, _$DeleteFriendEventImpl>
    implements _$$DeleteFriendEventImplCopyWith<$Res> {
  __$$DeleteFriendEventImplCopyWithImpl(_$DeleteFriendEventImpl _value,
      $Res Function(_$DeleteFriendEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? friendId = null,
  }) {
    return _then(_$DeleteFriendEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFriendEventImpl implements DeleteFriendEvent {
  const _$DeleteFriendEventImpl(this.userId, this.friendId);

  @override
  final String userId;
  @override
  final String friendId;

  @override
  String toString() {
    return 'FriendsDataEvent.removeFriend(userId: $userId, friendId: $friendId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFriendEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, friendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFriendEventImplCopyWith<_$DeleteFriendEventImpl> get copyWith =>
      __$$DeleteFriendEventImplCopyWithImpl<_$DeleteFriendEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) removeFriend,
    required TResult Function() dispose,
  }) {
    return removeFriend(userId, friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? removeFriend,
    TResult? Function()? dispose,
  }) {
    return removeFriend?.call(userId, friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? removeFriend,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (removeFriend != null) {
      return removeFriend(userId, friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsDataInitializeEvent value) initialize,
    required TResult Function(DeleteFriendEvent value) removeFriend,
    required TResult Function(FriendsDataDisposeEvent value) dispose,
  }) {
    return removeFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendsDataInitializeEvent value)? initialize,
    TResult? Function(DeleteFriendEvent value)? removeFriend,
    TResult? Function(FriendsDataDisposeEvent value)? dispose,
  }) {
    return removeFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsDataInitializeEvent value)? initialize,
    TResult Function(DeleteFriendEvent value)? removeFriend,
    TResult Function(FriendsDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (removeFriend != null) {
      return removeFriend(this);
    }
    return orElse();
  }
}

abstract class DeleteFriendEvent implements FriendsDataEvent {
  const factory DeleteFriendEvent(final String userId, final String friendId) =
      _$DeleteFriendEventImpl;

  String get userId;
  String get friendId;
  @JsonKey(ignore: true)
  _$$DeleteFriendEventImplCopyWith<_$DeleteFriendEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FriendsDataDisposeEventImplCopyWith<$Res> {
  factory _$$FriendsDataDisposeEventImplCopyWith(
          _$FriendsDataDisposeEventImpl value,
          $Res Function(_$FriendsDataDisposeEventImpl) then) =
      __$$FriendsDataDisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FriendsDataDisposeEventImplCopyWithImpl<$Res>
    extends _$FriendsDataEventCopyWithImpl<$Res, _$FriendsDataDisposeEventImpl>
    implements _$$FriendsDataDisposeEventImplCopyWith<$Res> {
  __$$FriendsDataDisposeEventImplCopyWithImpl(
      _$FriendsDataDisposeEventImpl _value,
      $Res Function(_$FriendsDataDisposeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FriendsDataDisposeEventImpl implements FriendsDataDisposeEvent {
  const _$FriendsDataDisposeEventImpl();

  @override
  String toString() {
    return 'FriendsDataEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendsDataDisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) removeFriend,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? removeFriend,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? removeFriend,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendsDataInitializeEvent value) initialize,
    required TResult Function(DeleteFriendEvent value) removeFriend,
    required TResult Function(FriendsDataDisposeEvent value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendsDataInitializeEvent value)? initialize,
    TResult? Function(DeleteFriendEvent value)? removeFriend,
    TResult? Function(FriendsDataDisposeEvent value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendsDataInitializeEvent value)? initialize,
    TResult Function(DeleteFriendEvent value)? removeFriend,
    TResult Function(FriendsDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class FriendsDataDisposeEvent implements FriendsDataEvent {
  const factory FriendsDataDisposeEvent() = _$FriendsDataDisposeEventImpl;
}
