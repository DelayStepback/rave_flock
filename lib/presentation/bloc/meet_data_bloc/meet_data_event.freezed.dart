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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetDataEventCopyWith<$Res> {
  factory $MeetDataEventCopyWith(
          MeetDataEvent value, $Res Function(MeetDataEvent) then) =
      _$MeetDataEventCopyWithImpl<$Res, MeetDataEvent>;
}

/// @nodoc
class _$MeetDataEventCopyWithImpl<$Res, $Val extends MeetDataEvent>
    implements $MeetDataEventCopyWith<$Res> {
  _$MeetDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MeetDataInitializeEventImplCopyWith<$Res> {
  factory _$$MeetDataInitializeEventImplCopyWith(
          _$MeetDataInitializeEventImpl value,
          $Res Function(_$MeetDataInitializeEventImpl) then) =
      __$$MeetDataInitializeEventImplCopyWithImpl<$Res>;
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
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) {
    return initialize(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) {
    return initialize?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
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
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
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

  String get userId;
  @JsonKey(ignore: true)
  _$$MeetDataInitializeEventImplCopyWith<_$MeetDataInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataAddEventImplCopyWith<$Res> {
  factory _$$MeetDataAddEventImplCopyWith(_$MeetDataAddEventImpl value,
          $Res Function(_$MeetDataAddEventImpl) then) =
      __$$MeetDataAddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MeetModel meetModel});

  $MeetModelCopyWith<$Res> get meetModel;
}

/// @nodoc
class __$$MeetDataAddEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataAddEventImpl>
    implements _$$MeetDataAddEventImplCopyWith<$Res> {
  __$$MeetDataAddEventImplCopyWithImpl(_$MeetDataAddEventImpl _value,
      $Res Function(_$MeetDataAddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetModel = null,
  }) {
    return _then(_$MeetDataAddEventImpl(
      null == meetModel
          ? _value.meetModel
          : meetModel // ignore: cast_nullable_to_non_nullable
              as MeetModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MeetModelCopyWith<$Res> get meetModel {
    return $MeetModelCopyWith<$Res>(_value.meetModel, (value) {
      return _then(_value.copyWith(meetModel: value));
    });
  }
}

/// @nodoc

class _$MeetDataAddEventImpl implements MeetDataAddEvent {
  const _$MeetDataAddEventImpl(this.meetModel);

  @override
  final MeetModel meetModel;

  @override
  String toString() {
    return 'MeetDataEvent.add(meetModel: $meetModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataAddEventImpl &&
            (identical(other.meetModel, meetModel) ||
                other.meetModel == meetModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataAddEventImplCopyWith<_$MeetDataAddEventImpl> get copyWith =>
      __$$MeetDataAddEventImplCopyWithImpl<_$MeetDataAddEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) {
    return add(meetModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) {
    return add?.call(meetModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(meetModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class MeetDataAddEvent implements MeetDataEvent {
  const factory MeetDataAddEvent(final MeetModel meetModel) =
      _$MeetDataAddEventImpl;

  MeetModel get meetModel;
  @JsonKey(ignore: true)
  _$$MeetDataAddEventImplCopyWith<_$MeetDataAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataDeleteEventImplCopyWith<$Res> {
  factory _$$MeetDataDeleteEventImplCopyWith(_$MeetDataDeleteEventImpl value,
          $Res Function(_$MeetDataDeleteEventImpl) then) =
      __$$MeetDataDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId});
}

/// @nodoc
class __$$MeetDataDeleteEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataDeleteEventImpl>
    implements _$$MeetDataDeleteEventImplCopyWith<$Res> {
  __$$MeetDataDeleteEventImplCopyWithImpl(_$MeetDataDeleteEventImpl _value,
      $Res Function(_$MeetDataDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
  }) {
    return _then(_$MeetDataDeleteEventImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeetDataDeleteEventImpl implements MeetDataDeleteEvent {
  const _$MeetDataDeleteEventImpl(this.meetId);

  @override
  final int meetId;

  @override
  String toString() {
    return 'MeetDataEvent.delete(meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataDeleteEventImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataDeleteEventImplCopyWith<_$MeetDataDeleteEventImpl> get copyWith =>
      __$$MeetDataDeleteEventImplCopyWithImpl<_$MeetDataDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) {
    return delete(meetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) {
    return delete?.call(meetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(meetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class MeetDataDeleteEvent implements MeetDataEvent {
  const factory MeetDataDeleteEvent(final int meetId) =
      _$MeetDataDeleteEventImpl;

  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataDeleteEventImplCopyWith<_$MeetDataDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataDisposeEventImplCopyWith<$Res> {
  factory _$$MeetDataDisposeEventImplCopyWith(_$MeetDataDisposeEventImpl value,
          $Res Function(_$MeetDataDisposeEventImpl) then) =
      __$$MeetDataDisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeetDataDisposeEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataDisposeEventImpl>
    implements _$$MeetDataDisposeEventImplCopyWith<$Res> {
  __$$MeetDataDisposeEventImplCopyWithImpl(_$MeetDataDisposeEventImpl _value,
      $Res Function(_$MeetDataDisposeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MeetDataDisposeEventImpl implements MeetDataDisposeEvent {
  const _$MeetDataDisposeEventImpl();

  @override
  String toString() {
    return 'MeetDataEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataDisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
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
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class MeetDataDisposeEvent implements MeetDataEvent {
  const factory MeetDataDisposeEvent() = _$MeetDataDisposeEventImpl;
}

/// @nodoc
abstract class _$$MeetDataUpdateCurrMeetInfoEventImplCopyWith<$Res> {
  factory _$$MeetDataUpdateCurrMeetInfoEventImplCopyWith(
          _$MeetDataUpdateCurrMeetInfoEventImpl value,
          $Res Function(_$MeetDataUpdateCurrMeetInfoEventImpl) then) =
      __$$MeetDataUpdateCurrMeetInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId});
}

/// @nodoc
class __$$MeetDataUpdateCurrMeetInfoEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res,
        _$MeetDataUpdateCurrMeetInfoEventImpl>
    implements _$$MeetDataUpdateCurrMeetInfoEventImplCopyWith<$Res> {
  __$$MeetDataUpdateCurrMeetInfoEventImplCopyWithImpl(
      _$MeetDataUpdateCurrMeetInfoEventImpl _value,
      $Res Function(_$MeetDataUpdateCurrMeetInfoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
  }) {
    return _then(_$MeetDataUpdateCurrMeetInfoEventImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeetDataUpdateCurrMeetInfoEventImpl
    implements MeetDataUpdateCurrMeetInfoEvent {
  const _$MeetDataUpdateCurrMeetInfoEventImpl(this.meetId);

  @override
  final int meetId;

  @override
  String toString() {
    return 'MeetDataEvent.updateCurrMeetInfo(meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUpdateCurrMeetInfoEventImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUpdateCurrMeetInfoEventImplCopyWith<
          _$MeetDataUpdateCurrMeetInfoEventImpl>
      get copyWith => __$$MeetDataUpdateCurrMeetInfoEventImplCopyWithImpl<
          _$MeetDataUpdateCurrMeetInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) {
    return updateCurrMeetInfo(meetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) {
    return updateCurrMeetInfo?.call(meetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (updateCurrMeetInfo != null) {
      return updateCurrMeetInfo(meetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) {
    return updateCurrMeetInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) {
    return updateCurrMeetInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (updateCurrMeetInfo != null) {
      return updateCurrMeetInfo(this);
    }
    return orElse();
  }
}

abstract class MeetDataUpdateCurrMeetInfoEvent implements MeetDataEvent {
  const factory MeetDataUpdateCurrMeetInfoEvent(final int meetId) =
      _$MeetDataUpdateCurrMeetInfoEventImpl;

  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataUpdateCurrMeetInfoEventImplCopyWith<
          _$MeetDataUpdateCurrMeetInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUpdateCurrMeetBasketImplCopyWith<$Res> {
  factory _$$MeetDataUpdateCurrMeetBasketImplCopyWith(
          _$MeetDataUpdateCurrMeetBasketImpl value,
          $Res Function(_$MeetDataUpdateCurrMeetBasketImpl) then) =
      __$$MeetDataUpdateCurrMeetBasketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId});
}

/// @nodoc
class __$$MeetDataUpdateCurrMeetBasketImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res,
        _$MeetDataUpdateCurrMeetBasketImpl>
    implements _$$MeetDataUpdateCurrMeetBasketImplCopyWith<$Res> {
  __$$MeetDataUpdateCurrMeetBasketImplCopyWithImpl(
      _$MeetDataUpdateCurrMeetBasketImpl _value,
      $Res Function(_$MeetDataUpdateCurrMeetBasketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
  }) {
    return _then(_$MeetDataUpdateCurrMeetBasketImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeetDataUpdateCurrMeetBasketImpl
    implements MeetDataUpdateCurrMeetBasket {
  const _$MeetDataUpdateCurrMeetBasketImpl(this.meetId);

  @override
  final int meetId;

  @override
  String toString() {
    return 'MeetDataEvent.updateCurrMeetBasket(meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUpdateCurrMeetBasketImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUpdateCurrMeetBasketImplCopyWith<
          _$MeetDataUpdateCurrMeetBasketImpl>
      get copyWith => __$$MeetDataUpdateCurrMeetBasketImplCopyWithImpl<
          _$MeetDataUpdateCurrMeetBasketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
  }) {
    return updateCurrMeetBasket(meetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
  }) {
    return updateCurrMeetBasket?.call(meetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (updateCurrMeetBasket != null) {
      return updateCurrMeetBasket(meetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataUpdateCurrMeetInfoEvent value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
  }) {
    return updateCurrMeetBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataUpdateCurrMeetInfoEvent value)?
        updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
  }) {
    return updateCurrMeetBasket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataUpdateCurrMeetInfoEvent value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    required TResult orElse(),
  }) {
    if (updateCurrMeetBasket != null) {
      return updateCurrMeetBasket(this);
    }
    return orElse();
  }
}

abstract class MeetDataUpdateCurrMeetBasket implements MeetDataEvent {
  const factory MeetDataUpdateCurrMeetBasket(final int meetId) =
      _$MeetDataUpdateCurrMeetBasketImpl;

  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataUpdateCurrMeetBasketImplCopyWith<
          _$MeetDataUpdateCurrMeetBasketImpl>
      get copyWith => throw _privateConstructorUsedError;
}
