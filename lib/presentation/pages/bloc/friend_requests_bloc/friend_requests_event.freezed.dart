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
    required TResult Function(int id) acceptRequest,
    required TResult Function(int id) denyRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(int id)? acceptRequest,
    TResult? Function(int id)? denyRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(int id)? acceptRequest,
    TResult Function(int id)? denyRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
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
    required TResult Function(int id) acceptRequest,
    required TResult Function(int id) denyRequest,
  }) {
    return initialize(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(int id)? acceptRequest,
    TResult? Function(int id)? denyRequest,
  }) {
    return initialize?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(int id)? acceptRequest,
    TResult Function(int id)? denyRequest,
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
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
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
  $Res call({int id});
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
    Object? id = null,
  }) {
    return _then(_$FriendRequestsAcceptEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FriendRequestsAcceptEventImpl implements FriendRequestsAcceptEvent {
  const _$FriendRequestsAcceptEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FriendRequestsEvent.acceptRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestsAcceptEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

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
    required TResult Function(int id) acceptRequest,
    required TResult Function(int id) denyRequest,
  }) {
    return acceptRequest(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(int id)? acceptRequest,
    TResult? Function(int id)? denyRequest,
  }) {
    return acceptRequest?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(int id)? acceptRequest,
    TResult Function(int id)? denyRequest,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
  }) {
    return acceptRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
  }) {
    return acceptRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    required TResult orElse(),
  }) {
    if (acceptRequest != null) {
      return acceptRequest(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsAcceptEvent implements FriendRequestsEvent {
  const factory FriendRequestsAcceptEvent(final int id) =
      _$FriendRequestsAcceptEventImpl;

  int get id;
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
  $Res call({int id});
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
    Object? id = null,
  }) {
    return _then(_$FriendRequestsDenyEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FriendRequestsDenyEventImpl implements FriendRequestsDenyEvent {
  const _$FriendRequestsDenyEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FriendRequestsEvent.denyRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestsDenyEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

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
    required TResult Function(int id) acceptRequest,
    required TResult Function(int id) denyRequest,
  }) {
    return denyRequest(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(int id)? acceptRequest,
    TResult? Function(int id)? denyRequest,
  }) {
    return denyRequest?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(int id)? acceptRequest,
    TResult Function(int id)? denyRequest,
    required TResult orElse(),
  }) {
    if (denyRequest != null) {
      return denyRequest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FriendRequestsInitializeEvent value) initialize,
    required TResult Function(FriendRequestsAcceptEvent value) acceptRequest,
    required TResult Function(FriendRequestsDenyEvent value) denyRequest,
  }) {
    return denyRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FriendRequestsInitializeEvent value)? initialize,
    TResult? Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult? Function(FriendRequestsDenyEvent value)? denyRequest,
  }) {
    return denyRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FriendRequestsInitializeEvent value)? initialize,
    TResult Function(FriendRequestsAcceptEvent value)? acceptRequest,
    TResult Function(FriendRequestsDenyEvent value)? denyRequest,
    required TResult orElse(),
  }) {
    if (denyRequest != null) {
      return denyRequest(this);
    }
    return orElse();
  }
}

abstract class FriendRequestsDenyEvent implements FriendRequestsEvent {
  const factory FriendRequestsDenyEvent(final int id) =
      _$FriendRequestsDenyEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FriendRequestsDenyEventImplCopyWith<_$FriendRequestsDenyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
