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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeetDataInitializeEvent value) initialize,
    required TResult Function(MeetDataAddEvent value) add,
    required TResult Function(MeetDataDeleteEvent value) delete,
    required TResult Function(MeetDataDisposeEvent value) dispose,
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
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
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
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
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
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
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
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
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
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
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
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
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
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
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
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
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
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
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
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
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
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
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
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
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
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
abstract class _$$MeetDataSearchEventImplCopyWith<$Res> {
  factory _$$MeetDataSearchEventImplCopyWith(_$MeetDataSearchEventImpl value,
          $Res Function(_$MeetDataSearchEventImpl) then) =
      __$$MeetDataSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String titleLike});
}

/// @nodoc
class __$$MeetDataSearchEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataSearchEventImpl>
    implements _$$MeetDataSearchEventImplCopyWith<$Res> {
  __$$MeetDataSearchEventImplCopyWithImpl(_$MeetDataSearchEventImpl _value,
      $Res Function(_$MeetDataSearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? titleLike = null,
  }) {
    return _then(_$MeetDataSearchEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == titleLike
          ? _value.titleLike
          : titleLike // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetDataSearchEventImpl implements MeetDataSearchEvent {
  const _$MeetDataSearchEventImpl(this.userId, this.titleLike);

  @override
  final String userId;
  @override
  final String titleLike;

  @override
  String toString() {
    return 'MeetDataEvent.search(userId: $userId, titleLike: $titleLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataSearchEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.titleLike, titleLike) ||
                other.titleLike == titleLike));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, titleLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataSearchEventImplCopyWith<_$MeetDataSearchEventImpl> get copyWith =>
      __$$MeetDataSearchEventImplCopyWithImpl<_$MeetDataSearchEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) {
    return search(userId, titleLike);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) {
    return search?.call(userId, titleLike);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(userId, titleLike);
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class MeetDataSearchEvent implements MeetDataEvent {
  const factory MeetDataSearchEvent(
      final String userId, final String titleLike) = _$MeetDataSearchEventImpl;

  String get userId;
  String get titleLike;
  @JsonKey(ignore: true)
  _$$MeetDataSearchEventImplCopyWith<_$MeetDataSearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUnSearchEventImplCopyWith<$Res> {
  factory _$$MeetDataUnSearchEventImplCopyWith(
          _$MeetDataUnSearchEventImpl value,
          $Res Function(_$MeetDataUnSearchEventImpl) then) =
      __$$MeetDataUnSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeetDataUnSearchEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataUnSearchEventImpl>
    implements _$$MeetDataUnSearchEventImplCopyWith<$Res> {
  __$$MeetDataUnSearchEventImplCopyWithImpl(_$MeetDataUnSearchEventImpl _value,
      $Res Function(_$MeetDataUnSearchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MeetDataUnSearchEventImpl implements MeetDataUnSearchEvent {
  const _$MeetDataUnSearchEventImpl();

  @override
  String toString() {
    return 'MeetDataEvent.unSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUnSearchEventImpl);
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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) {
    return unSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) {
    return unSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) {
    if (unSearch != null) {
      return unSearch();
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) {
    return unSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) {
    return unSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (unSearch != null) {
      return unSearch(this);
    }
    return orElse();
  }
}

abstract class MeetDataUnSearchEvent implements MeetDataEvent {
  const factory MeetDataUnSearchEvent() = _$MeetDataUnSearchEventImpl;
}

/// @nodoc
abstract class _$$MeetDataSendInviteEventImplCopyWith<$Res> {
  factory _$$MeetDataSendInviteEventImplCopyWith(
          _$MeetDataSendInviteEventImpl value,
          $Res Function(_$MeetDataSendInviteEventImpl) then) =
      __$$MeetDataSendInviteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int meetId});
}

/// @nodoc
class __$$MeetDataSendInviteEventImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataSendInviteEventImpl>
    implements _$$MeetDataSendInviteEventImplCopyWith<$Res> {
  __$$MeetDataSendInviteEventImplCopyWithImpl(
      _$MeetDataSendInviteEventImpl _value,
      $Res Function(_$MeetDataSendInviteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? meetId = null,
  }) {
    return _then(_$MeetDataSendInviteEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeetDataSendInviteEventImpl implements MeetDataSendInviteEvent {
  const _$MeetDataSendInviteEventImpl(this.userId, this.meetId);

  @override
  final String userId;
  @override
  final int meetId;

  @override
  String toString() {
    return 'MeetDataEvent.sendInvite(userId: $userId, meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataSendInviteEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataSendInviteEventImplCopyWith<_$MeetDataSendInviteEventImpl>
      get copyWith => __$$MeetDataSendInviteEventImplCopyWithImpl<
          _$MeetDataSendInviteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) {
    return sendInvite(userId, meetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) {
    return sendInvite?.call(userId, meetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(userId, meetId);
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) {
    return sendInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) {
    return sendInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(this);
    }
    return orElse();
  }
}

abstract class MeetDataSendInviteEvent implements MeetDataEvent {
  const factory MeetDataSendInviteEvent(final String userId, final int meetId) =
      _$MeetDataSendInviteEventImpl;

  String get userId;
  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataSendInviteEventImplCopyWith<_$MeetDataSendInviteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUpdateCurrMeetInfoImplCopyWith<$Res> {
  factory _$$MeetDataUpdateCurrMeetInfoImplCopyWith(
          _$MeetDataUpdateCurrMeetInfoImpl value,
          $Res Function(_$MeetDataUpdateCurrMeetInfoImpl) then) =
      __$$MeetDataUpdateCurrMeetInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId});
}

/// @nodoc
class __$$MeetDataUpdateCurrMeetInfoImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataUpdateCurrMeetInfoImpl>
    implements _$$MeetDataUpdateCurrMeetInfoImplCopyWith<$Res> {
  __$$MeetDataUpdateCurrMeetInfoImplCopyWithImpl(
      _$MeetDataUpdateCurrMeetInfoImpl _value,
      $Res Function(_$MeetDataUpdateCurrMeetInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
  }) {
    return _then(_$MeetDataUpdateCurrMeetInfoImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeetDataUpdateCurrMeetInfoImpl implements MeetDataUpdateCurrMeetInfo {
  const _$MeetDataUpdateCurrMeetInfoImpl(this.meetId);

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
            other is _$MeetDataUpdateCurrMeetInfoImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUpdateCurrMeetInfoImplCopyWith<_$MeetDataUpdateCurrMeetInfoImpl>
      get copyWith => __$$MeetDataUpdateCurrMeetInfoImplCopyWithImpl<
          _$MeetDataUpdateCurrMeetInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
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
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
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
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
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
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (updateCurrMeetInfo != null) {
      return updateCurrMeetInfo(this);
    }
    return orElse();
  }
}

abstract class MeetDataUpdateCurrMeetInfo implements MeetDataEvent {
  const factory MeetDataUpdateCurrMeetInfo(final int meetId) =
      _$MeetDataUpdateCurrMeetInfoImpl;

  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataUpdateCurrMeetInfoImplCopyWith<_$MeetDataUpdateCurrMeetInfoImpl>
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
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
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
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
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
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
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
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
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

/// @nodoc
abstract class _$$MeetDataUpdateCurrMeetGuestsImplCopyWith<$Res> {
  factory _$$MeetDataUpdateCurrMeetGuestsImplCopyWith(
          _$MeetDataUpdateCurrMeetGuestsImpl value,
          $Res Function(_$MeetDataUpdateCurrMeetGuestsImpl) then) =
      __$$MeetDataUpdateCurrMeetGuestsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId});
}

/// @nodoc
class __$$MeetDataUpdateCurrMeetGuestsImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res,
        _$MeetDataUpdateCurrMeetGuestsImpl>
    implements _$$MeetDataUpdateCurrMeetGuestsImplCopyWith<$Res> {
  __$$MeetDataUpdateCurrMeetGuestsImplCopyWithImpl(
      _$MeetDataUpdateCurrMeetGuestsImpl _value,
      $Res Function(_$MeetDataUpdateCurrMeetGuestsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
  }) {
    return _then(_$MeetDataUpdateCurrMeetGuestsImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeetDataUpdateCurrMeetGuestsImpl
    implements MeetDataUpdateCurrMeetGuests {
  const _$MeetDataUpdateCurrMeetGuestsImpl(this.meetId);

  @override
  final int meetId;

  @override
  String toString() {
    return 'MeetDataEvent.updateCurrMeetGuests(meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUpdateCurrMeetGuestsImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUpdateCurrMeetGuestsImplCopyWith<
          _$MeetDataUpdateCurrMeetGuestsImpl>
      get copyWith => __$$MeetDataUpdateCurrMeetGuestsImplCopyWithImpl<
          _$MeetDataUpdateCurrMeetGuestsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) {
    return updateCurrMeetGuests(meetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) {
    return updateCurrMeetGuests?.call(meetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) {
    if (updateCurrMeetGuests != null) {
      return updateCurrMeetGuests(meetId);
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) {
    return updateCurrMeetGuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) {
    return updateCurrMeetGuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (updateCurrMeetGuests != null) {
      return updateCurrMeetGuests(this);
    }
    return orElse();
  }
}

abstract class MeetDataUpdateCurrMeetGuests implements MeetDataEvent {
  const factory MeetDataUpdateCurrMeetGuests(final int meetId) =
      _$MeetDataUpdateCurrMeetGuestsImpl;

  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataUpdateCurrMeetGuestsImplCopyWith<
          _$MeetDataUpdateCurrMeetGuestsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUserTakeThisItemImplCopyWith<$Res> {
  factory _$$MeetDataUserTakeThisItemImplCopyWith(
          _$MeetDataUserTakeThisItemImpl value,
          $Res Function(_$MeetDataUserTakeThisItemImpl) then) =
      __$$MeetDataUserTakeThisItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId, int itemId, bool isTake});
}

/// @nodoc
class __$$MeetDataUserTakeThisItemImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataUserTakeThisItemImpl>
    implements _$$MeetDataUserTakeThisItemImplCopyWith<$Res> {
  __$$MeetDataUserTakeThisItemImplCopyWithImpl(
      _$MeetDataUserTakeThisItemImpl _value,
      $Res Function(_$MeetDataUserTakeThisItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
    Object? itemId = null,
    Object? isTake = null,
  }) {
    return _then(_$MeetDataUserTakeThisItemImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      null == isTake
          ? _value.isTake
          : isTake // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MeetDataUserTakeThisItemImpl implements MeetDataUserTakeThisItem {
  const _$MeetDataUserTakeThisItemImpl(this.meetId, this.itemId, this.isTake);

  @override
  final int meetId;
  @override
  final int itemId;
  @override
  final bool isTake;

  @override
  String toString() {
    return 'MeetDataEvent.takeThisItem(meetId: $meetId, itemId: $itemId, isTake: $isTake)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUserTakeThisItemImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.isTake, isTake) || other.isTake == isTake));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId, itemId, isTake);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUserTakeThisItemImplCopyWith<_$MeetDataUserTakeThisItemImpl>
      get copyWith => __$$MeetDataUserTakeThisItemImplCopyWithImpl<
          _$MeetDataUserTakeThisItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) {
    return takeThisItem(meetId, itemId, isTake);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) {
    return takeThisItem?.call(meetId, itemId, isTake);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) {
    if (takeThisItem != null) {
      return takeThisItem(meetId, itemId, isTake);
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) {
    return takeThisItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) {
    return takeThisItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (takeThisItem != null) {
      return takeThisItem(this);
    }
    return orElse();
  }
}

abstract class MeetDataUserTakeThisItem implements MeetDataEvent {
  const factory MeetDataUserTakeThisItem(
          final int meetId, final int itemId, final bool isTake) =
      _$MeetDataUserTakeThisItemImpl;

  int get meetId;
  int get itemId;
  bool get isTake;
  @JsonKey(ignore: true)
  _$$MeetDataUserTakeThisItemImplCopyWith<_$MeetDataUserTakeThisItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUserUseThisItemImplCopyWith<$Res> {
  factory _$$MeetDataUserUseThisItemImplCopyWith(
          _$MeetDataUserUseThisItemImpl value,
          $Res Function(_$MeetDataUserUseThisItemImpl) then) =
      __$$MeetDataUserUseThisItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId, int itemId, bool isUse});
}

/// @nodoc
class __$$MeetDataUserUseThisItemImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataUserUseThisItemImpl>
    implements _$$MeetDataUserUseThisItemImplCopyWith<$Res> {
  __$$MeetDataUserUseThisItemImplCopyWithImpl(
      _$MeetDataUserUseThisItemImpl _value,
      $Res Function(_$MeetDataUserUseThisItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
    Object? itemId = null,
    Object? isUse = null,
  }) {
    return _then(_$MeetDataUserUseThisItemImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      null == isUse
          ? _value.isUse
          : isUse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MeetDataUserUseThisItemImpl implements MeetDataUserUseThisItem {
  const _$MeetDataUserUseThisItemImpl(this.meetId, this.itemId, this.isUse);

  @override
  final int meetId;
  @override
  final int itemId;
  @override
  final bool isUse;

  @override
  String toString() {
    return 'MeetDataEvent.useThisItem(meetId: $meetId, itemId: $itemId, isUse: $isUse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUserUseThisItemImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.isUse, isUse) || other.isUse == isUse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId, itemId, isUse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUserUseThisItemImplCopyWith<_$MeetDataUserUseThisItemImpl>
      get copyWith => __$$MeetDataUserUseThisItemImplCopyWithImpl<
          _$MeetDataUserUseThisItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(int meetId, int itemId, bool isTake) takeThisItem,
    required TResult Function(int meetId, int itemId, bool isUse) useThisItem,
  }) {
    return useThisItem(meetId, itemId, isUse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function(MeetModel meetModel)? add,
    TResult? Function(int meetId)? delete,
    TResult? Function()? dispose,
    TResult? Function(String userId, String titleLike)? search,
    TResult? Function()? unSearch,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult? Function(int meetId, int itemId, bool isUse)? useThisItem,
  }) {
    return useThisItem?.call(meetId, itemId, isUse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function(MeetModel meetModel)? add,
    TResult Function(int meetId)? delete,
    TResult Function()? dispose,
    TResult Function(String userId, String titleLike)? search,
    TResult Function()? unSearch,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(int meetId, int itemId, bool isTake)? takeThisItem,
    TResult Function(int meetId, int itemId, bool isUse)? useThisItem,
    required TResult orElse(),
  }) {
    if (useThisItem != null) {
      return useThisItem(meetId, itemId, isUse);
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
    required TResult Function(MeetDataSearchEvent value) search,
    required TResult Function(MeetDataUnSearchEvent value) unSearch,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataUserTakeThisItem value) takeThisItem,
    required TResult Function(MeetDataUserUseThisItem value) useThisItem,
  }) {
    return useThisItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeetDataInitializeEvent value)? initialize,
    TResult? Function(MeetDataAddEvent value)? add,
    TResult? Function(MeetDataDeleteEvent value)? delete,
    TResult? Function(MeetDataDisposeEvent value)? dispose,
    TResult? Function(MeetDataSearchEvent value)? search,
    TResult? Function(MeetDataUnSearchEvent value)? unSearch,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult? Function(MeetDataUserUseThisItem value)? useThisItem,
  }) {
    return useThisItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeetDataInitializeEvent value)? initialize,
    TResult Function(MeetDataAddEvent value)? add,
    TResult Function(MeetDataDeleteEvent value)? delete,
    TResult Function(MeetDataDisposeEvent value)? dispose,
    TResult Function(MeetDataSearchEvent value)? search,
    TResult Function(MeetDataUnSearchEvent value)? unSearch,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataUserTakeThisItem value)? takeThisItem,
    TResult Function(MeetDataUserUseThisItem value)? useThisItem,
    required TResult orElse(),
  }) {
    if (useThisItem != null) {
      return useThisItem(this);
    }
    return orElse();
  }
}

abstract class MeetDataUserUseThisItem implements MeetDataEvent {
  const factory MeetDataUserUseThisItem(
          final int meetId, final int itemId, final bool isUse) =
      _$MeetDataUserUseThisItemImpl;

  int get meetId;
  int get itemId;
  bool get isUse;
  @JsonKey(ignore: true)
  _$$MeetDataUserUseThisItemImplCopyWith<_$MeetDataUserUseThisItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
