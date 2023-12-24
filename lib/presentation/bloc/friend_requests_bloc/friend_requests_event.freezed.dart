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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) acceptRequest,
    required TResult Function(String userId, String friendId) denyRequest,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? acceptRequest,
    TResult? Function(String userId, String friendId)? denyRequest,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? acceptRequest,
    TResult Function(String userId, String friendId)? denyRequest,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
    required TResult Function(FriendRequestsDisposeEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult? Function(FriendRequestsDisposeEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult Function(FriendRequestsDisposeEvent value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestsEventCopyWith<$Res> {
  factory $FriendRequestsEventCopyWith(
          FriendRequestsEvent value, $Res Function(FriendRequestsEvent) then) =
      _$FriendRequestsEventCopyWithImpl<$Res, FriendRequestsEvent>;
}

/// @nodoc
class _$FriendRequestsEventCopyWithImpl<$Res, $Val extends FriendRequestsEvent>
    implements $FriendRequestsEventCopyWith<$Res> {
  _$FriendRequestsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FriendRequestsInitializeEventImplCopyWith<$Res> {
  factory _$$FriendRequestsInitializeEventImplCopyWith(
          _$FriendRequestsInitializeEventImpl value,
          $Res Function(_$FriendRequestsInitializeEventImpl) then) =
      __$$FriendRequestsInitializeEventImplCopyWithImpl<$Res>;
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
    required TResult Function(String userId, String friendId) acceptRequest,
    required TResult Function(String userId, String friendId) denyRequest,
    required TResult Function() dispose,
  }) {
    return initialize(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? acceptRequest,
    TResult? Function(String userId, String friendId)? denyRequest,
    TResult? Function()? dispose,
  }) {
    return initialize?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? acceptRequest,
    TResult Function(String userId, String friendId)? denyRequest,
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
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
    required TResult Function(FriendRequestsDisposeEvent value) dispose,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult? Function(FriendRequestsDisposeEvent value)? dispose,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult Function(FriendRequestsDisposeEvent value)? dispose,
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

  String get userId;
  @JsonKey(ignore: true)
  _$$FriendRequestsInitializeEventImplCopyWith<
          _$FriendRequestsInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FriendRequestsAcceptEventImplCopyWith<$Res> {
  factory _$$FriendRequestsAcceptEventImplCopyWith(
          _$FriendRequestsAcceptEventImpl value,
          $Res Function(_$FriendRequestsAcceptEventImpl) then) =
      __$$FriendRequestsAcceptEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String friendId});
}

/// @nodoc
class __$$FriendRequestsAcceptEventImplCopyWithImpl<$Res>
    extends _$FriendRequestsEventCopyWithImpl<$Res,
        _$FriendRequestsAcceptEventImpl>
    implements _$$FriendRequestsAcceptEventImplCopyWith<$Res> {
  __$$FriendRequestsAcceptEventImplCopyWithImpl(
      _$FriendRequestsAcceptEventImpl _value,
      $Res Function(_$FriendRequestsAcceptEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? friendId = null,
  }) {
    return _then(_$FriendRequestsAcceptEventImpl(
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

class _$FriendRequestsAcceptEventImpl implements FriendRequestsAcceptEvent {
  const _$FriendRequestsAcceptEventImpl(this.userId, this.friendId);

  @override
  final String userId;
  @override
  final String friendId;

  @override
  String toString() {
    return 'FriendRequestsEvent.acceptRequest(userId: $userId, friendId: $friendId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestsAcceptEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, friendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestsAcceptEventImplCopyWith<_$FriendRequestsAcceptEventImpl>
      get copyWith => __$$FriendRequestsAcceptEventImplCopyWithImpl<
          _$FriendRequestsAcceptEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) acceptRequest,
    required TResult Function(String userId, String friendId) denyRequest,
    required TResult Function() dispose,
  }) {
    return acceptRequest(userId, friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? acceptRequest,
    TResult? Function(String userId, String friendId)? denyRequest,
    TResult? Function()? dispose,
  }) {
    return acceptRequest?.call(userId, friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? acceptRequest,
    TResult Function(String userId, String friendId)? denyRequest,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(userId, friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
    required TResult Function(FriendRequestsDisposeEvent value) dispose,
  }) {
    return acceptRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult? Function(FriendRequestsDisposeEvent value)? dispose,
  }) {
    return acceptRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult Function(FriendRequestsDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsAcceptEvent implements FriendRequestsEvent {
  const factory FriendRequestsAcceptEvent(
          final String userId, final String friendId) =
      _$FriendRequestsAcceptEventImpl;

  String get userId;
  String get friendId;
  @JsonKey(ignore: true)
  _$$FriendRequestsAcceptEventImplCopyWith<_$FriendRequestsAcceptEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FriendRequestsDenyEventImplCopyWith<$Res> {
  factory _$$FriendRequestsDenyEventImplCopyWith(
          _$FriendRequestsDenyEventImpl value,
          $Res Function(_$FriendRequestsDenyEventImpl) then) =
      __$$FriendRequestsDenyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String friendId});
}

/// @nodoc
class __$$FriendRequestsDenyEventImplCopyWithImpl<$Res>
    extends _$FriendRequestsEventCopyWithImpl<$Res,
        _$FriendRequestsDenyEventImpl>
    implements _$$FriendRequestsDenyEventImplCopyWith<$Res> {
  __$$FriendRequestsDenyEventImplCopyWithImpl(
      _$FriendRequestsDenyEventImpl _value,
      $Res Function(_$FriendRequestsDenyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? friendId = null,
  }) {
    return _then(_$FriendRequestsDenyEventImpl(
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

class _$FriendRequestsDenyEventImpl implements FriendRequestsDenyEvent {
  const _$FriendRequestsDenyEventImpl(this.userId, this.friendId);

  @override
  final String userId;
  @override
  final String friendId;

  @override
  String toString() {
    return 'FriendRequestsEvent.denyRequest(userId: $userId, friendId: $friendId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestsDenyEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, friendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestsDenyEventImplCopyWith<_$FriendRequestsDenyEventImpl>
      get copyWith => __$$FriendRequestsDenyEventImplCopyWithImpl<
          _$FriendRequestsDenyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) acceptRequest,
    required TResult Function(String userId, String friendId) denyRequest,
    required TResult Function() dispose,
  }) {
    return denyRequest(userId, friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? acceptRequest,
    TResult? Function(String userId, String friendId)? denyRequest,
    TResult? Function()? dispose,
  }) {
    return denyRequest?.call(userId, friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? acceptRequest,
    TResult Function(String userId, String friendId)? denyRequest,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (denyRequest != null) {
      return denyRequest(userId, friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
    required TResult Function(FriendRequestsDisposeEvent value) dispose,
  }) {
    return denyRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult? Function(FriendRequestsDisposeEvent value)? dispose,
  }) {
    return denyRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult Function(FriendRequestsDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (denyRequest != null) {
      return denyRequest(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsDenyEvent implements FriendRequestsEvent {
  const factory FriendRequestsDenyEvent(
          final String userId, final String friendId) =
      _$FriendRequestsDenyEventImpl;

  String get userId;
  String get friendId;
  @JsonKey(ignore: true)
  _$$FriendRequestsDenyEventImplCopyWith<_$FriendRequestsDenyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FriendRequestsDisposeEventImplCopyWith<$Res> {
  factory _$$FriendRequestsDisposeEventImplCopyWith(
          _$FriendRequestsDisposeEventImpl value,
          $Res Function(_$FriendRequestsDisposeEventImpl) then) =
      __$$FriendRequestsDisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FriendRequestsDisposeEventImplCopyWithImpl<$Res>
    extends _$FriendRequestsEventCopyWithImpl<$Res,
        _$FriendRequestsDisposeEventImpl>
    implements _$$FriendRequestsDisposeEventImplCopyWith<$Res> {
  __$$FriendRequestsDisposeEventImplCopyWithImpl(
      _$FriendRequestsDisposeEventImpl _value,
      $Res Function(_$FriendRequestsDisposeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FriendRequestsDisposeEventImpl implements FriendRequestsDisposeEvent {
  const _$FriendRequestsDisposeEventImpl();

  @override
  String toString() {
    return 'FriendRequestsEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestsDisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(String userId, String friendId) acceptRequest,
    required TResult Function(String userId, String friendId) denyRequest,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(String userId, String friendId)? acceptRequest,
    TResult? Function(String userId, String friendId)? denyRequest,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(String userId, String friendId)? acceptRequest,
    TResult Function(String userId, String friendId)? denyRequest,
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
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
    required TResult Function(FriendRequestsDisposeEvent value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult? Function(FriendRequestsDisposeEvent value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    TResult Function(FriendRequestsDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsDisposeEvent implements FriendRequestsEvent {
  const factory FriendRequestsDisposeEvent() = _$FriendRequestsDisposeEventImpl;
}
