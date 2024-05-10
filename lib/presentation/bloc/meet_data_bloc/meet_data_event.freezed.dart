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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
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
abstract class _$$MeetDataUpdateGuestStatusImplCopyWith<$Res> {
  factory _$$MeetDataUpdateGuestStatusImplCopyWith(
          _$MeetDataUpdateGuestStatusImpl value,
          $Res Function(_$MeetDataUpdateGuestStatusImpl) then) =
      __$$MeetDataUpdateGuestStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int meetId, GuestChooseAtMeetEnum guestChoose});
}

/// @nodoc
class __$$MeetDataUpdateGuestStatusImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataUpdateGuestStatusImpl>
    implements _$$MeetDataUpdateGuestStatusImplCopyWith<$Res> {
  __$$MeetDataUpdateGuestStatusImplCopyWithImpl(
      _$MeetDataUpdateGuestStatusImpl _value,
      $Res Function(_$MeetDataUpdateGuestStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? meetId = null,
    Object? guestChoose = null,
  }) {
    return _then(_$MeetDataUpdateGuestStatusImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
      null == guestChoose
          ? _value.guestChoose
          : guestChoose // ignore: cast_nullable_to_non_nullable
              as GuestChooseAtMeetEnum,
    ));
  }
}

/// @nodoc

class _$MeetDataUpdateGuestStatusImpl implements MeetDataUpdateGuestStatus {
  const _$MeetDataUpdateGuestStatusImpl(
      this.userId, this.meetId, this.guestChoose);

  @override
  final String userId;
  @override
  final int meetId;
  @override
  final GuestChooseAtMeetEnum guestChoose;

  @override
  String toString() {
    return 'MeetDataEvent.updateGuestStatus(userId: $userId, meetId: $meetId, guestChoose: $guestChoose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUpdateGuestStatusImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.guestChoose, guestChoose) ||
                other.guestChoose == guestChoose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, meetId, guestChoose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUpdateGuestStatusImplCopyWith<_$MeetDataUpdateGuestStatusImpl>
      get copyWith => __$$MeetDataUpdateGuestStatusImplCopyWithImpl<
          _$MeetDataUpdateGuestStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return updateGuestStatus(userId, meetId, guestChoose);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return updateGuestStatus?.call(userId, meetId, guestChoose);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (updateGuestStatus != null) {
      return updateGuestStatus(userId, meetId, guestChoose);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return updateGuestStatus(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return updateGuestStatus?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (updateGuestStatus != null) {
      return updateGuestStatus(this);
    }
    return orElse();
  }
}

abstract class MeetDataUpdateGuestStatus implements MeetDataEvent {
  const factory MeetDataUpdateGuestStatus(final String userId, final int meetId,
          final GuestChooseAtMeetEnum guestChoose) =
      _$MeetDataUpdateGuestStatusImpl;

  String get userId;
  int get meetId;
  GuestChooseAtMeetEnum get guestChoose;
  @JsonKey(ignore: true)
  _$$MeetDataUpdateGuestStatusImplCopyWith<_$MeetDataUpdateGuestStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUpdateRemoveGuestInviteImplCopyWith<$Res> {
  factory _$$MeetDataUpdateRemoveGuestInviteImplCopyWith(
          _$MeetDataUpdateRemoveGuestInviteImpl value,
          $Res Function(_$MeetDataUpdateRemoveGuestInviteImpl) then) =
      __$$MeetDataUpdateRemoveGuestInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int meetId});
}

/// @nodoc
class __$$MeetDataUpdateRemoveGuestInviteImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res,
        _$MeetDataUpdateRemoveGuestInviteImpl>
    implements _$$MeetDataUpdateRemoveGuestInviteImplCopyWith<$Res> {
  __$$MeetDataUpdateRemoveGuestInviteImplCopyWithImpl(
      _$MeetDataUpdateRemoveGuestInviteImpl _value,
      $Res Function(_$MeetDataUpdateRemoveGuestInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? meetId = null,
  }) {
    return _then(_$MeetDataUpdateRemoveGuestInviteImpl(
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

class _$MeetDataUpdateRemoveGuestInviteImpl
    implements MeetDataUpdateRemoveGuestInvite {
  const _$MeetDataUpdateRemoveGuestInviteImpl(this.userId, this.meetId);

  @override
  final String userId;
  @override
  final int meetId;

  @override
  String toString() {
    return 'MeetDataEvent.removeGuestInvite(userId: $userId, meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUpdateRemoveGuestInviteImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUpdateRemoveGuestInviteImplCopyWith<
          _$MeetDataUpdateRemoveGuestInviteImpl>
      get copyWith => __$$MeetDataUpdateRemoveGuestInviteImplCopyWithImpl<
          _$MeetDataUpdateRemoveGuestInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return removeGuestInvite(userId, meetId);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return removeGuestInvite?.call(userId, meetId);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (removeGuestInvite != null) {
      return removeGuestInvite(userId, meetId);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return removeGuestInvite(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return removeGuestInvite?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (removeGuestInvite != null) {
      return removeGuestInvite(this);
    }
    return orElse();
  }
}

abstract class MeetDataUpdateRemoveGuestInvite implements MeetDataEvent {
  const factory MeetDataUpdateRemoveGuestInvite(
          final String userId, final int meetId) =
      _$MeetDataUpdateRemoveGuestInviteImpl;

  String get userId;
  int get meetId;
  @JsonKey(ignore: true)
  _$$MeetDataUpdateRemoveGuestInviteImplCopyWith<
          _$MeetDataUpdateRemoveGuestInviteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataMakeOrganizatorImplCopyWith<$Res> {
  factory _$$MeetDataMakeOrganizatorImplCopyWith(
          _$MeetDataMakeOrganizatorImpl value,
          $Res Function(_$MeetDataMakeOrganizatorImpl) then) =
      __$$MeetDataMakeOrganizatorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int meetId, String currentChooseStatus});
}

/// @nodoc
class __$$MeetDataMakeOrganizatorImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataMakeOrganizatorImpl>
    implements _$$MeetDataMakeOrganizatorImplCopyWith<$Res> {
  __$$MeetDataMakeOrganizatorImplCopyWithImpl(
      _$MeetDataMakeOrganizatorImpl _value,
      $Res Function(_$MeetDataMakeOrganizatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? meetId = null,
    Object? currentChooseStatus = null,
  }) {
    return _then(_$MeetDataMakeOrganizatorImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentChooseStatus
          ? _value.currentChooseStatus
          : currentChooseStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetDataMakeOrganizatorImpl implements MeetDataMakeOrganizator {
  const _$MeetDataMakeOrganizatorImpl(
      this.userId, this.meetId, this.currentChooseStatus);

  @override
  final String userId;
  @override
  final int meetId;
  @override
  final String currentChooseStatus;

  @override
  String toString() {
    return 'MeetDataEvent.makeOrganizator(userId: $userId, meetId: $meetId, currentChooseStatus: $currentChooseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataMakeOrganizatorImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.currentChooseStatus, currentChooseStatus) ||
                other.currentChooseStatus == currentChooseStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, meetId, currentChooseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataMakeOrganizatorImplCopyWith<_$MeetDataMakeOrganizatorImpl>
      get copyWith => __$$MeetDataMakeOrganizatorImplCopyWithImpl<
          _$MeetDataMakeOrganizatorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return makeOrganizator(userId, meetId, currentChooseStatus);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return makeOrganizator?.call(userId, meetId, currentChooseStatus);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (makeOrganizator != null) {
      return makeOrganizator(userId, meetId, currentChooseStatus);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return makeOrganizator(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return makeOrganizator?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (makeOrganizator != null) {
      return makeOrganizator(this);
    }
    return orElse();
  }
}

abstract class MeetDataMakeOrganizator implements MeetDataEvent {
  const factory MeetDataMakeOrganizator(final String userId, final int meetId,
      final String currentChooseStatus) = _$MeetDataMakeOrganizatorImpl;

  String get userId;
  int get meetId;
  String get currentChooseStatus;
  @JsonKey(ignore: true)
  _$$MeetDataMakeOrganizatorImplCopyWith<_$MeetDataMakeOrganizatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUnMakeOrganizatorImplCopyWith<$Res> {
  factory _$$MeetDataUnMakeOrganizatorImplCopyWith(
          _$MeetDataUnMakeOrganizatorImpl value,
          $Res Function(_$MeetDataUnMakeOrganizatorImpl) then) =
      __$$MeetDataUnMakeOrganizatorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, int meetId, String currentChooseStatus});
}

/// @nodoc
class __$$MeetDataUnMakeOrganizatorImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataUnMakeOrganizatorImpl>
    implements _$$MeetDataUnMakeOrganizatorImplCopyWith<$Res> {
  __$$MeetDataUnMakeOrganizatorImplCopyWithImpl(
      _$MeetDataUnMakeOrganizatorImpl _value,
      $Res Function(_$MeetDataUnMakeOrganizatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? meetId = null,
    Object? currentChooseStatus = null,
  }) {
    return _then(_$MeetDataUnMakeOrganizatorImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentChooseStatus
          ? _value.currentChooseStatus
          : currentChooseStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetDataUnMakeOrganizatorImpl implements MeetDataUnMakeOrganizator {
  const _$MeetDataUnMakeOrganizatorImpl(
      this.userId, this.meetId, this.currentChooseStatus);

  @override
  final String userId;
  @override
  final int meetId;
  @override
  final String currentChooseStatus;

  @override
  String toString() {
    return 'MeetDataEvent.unMakeOrganizator(userId: $userId, meetId: $meetId, currentChooseStatus: $currentChooseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUnMakeOrganizatorImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.currentChooseStatus, currentChooseStatus) ||
                other.currentChooseStatus == currentChooseStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, meetId, currentChooseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUnMakeOrganizatorImplCopyWith<_$MeetDataUnMakeOrganizatorImpl>
      get copyWith => __$$MeetDataUnMakeOrganizatorImplCopyWithImpl<
          _$MeetDataUnMakeOrganizatorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return unMakeOrganizator(userId, meetId, currentChooseStatus);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return unMakeOrganizator?.call(userId, meetId, currentChooseStatus);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (unMakeOrganizator != null) {
      return unMakeOrganizator(userId, meetId, currentChooseStatus);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return unMakeOrganizator(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return unMakeOrganizator?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (unMakeOrganizator != null) {
      return unMakeOrganizator(this);
    }
    return orElse();
  }
}

abstract class MeetDataUnMakeOrganizator implements MeetDataEvent {
  const factory MeetDataUnMakeOrganizator(final String userId, final int meetId,
      final String currentChooseStatus) = _$MeetDataUnMakeOrganizatorImpl;

  String get userId;
  int get meetId;
  String get currentChooseStatus;
  @JsonKey(ignore: true)
  _$$MeetDataUnMakeOrganizatorImplCopyWith<_$MeetDataUnMakeOrganizatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataAddBasketItemImplCopyWith<$Res> {
  factory _$$MeetDataAddBasketItemImplCopyWith(
          _$MeetDataAddBasketItemImpl value,
          $Res Function(_$MeetDataAddBasketItemImpl) then) =
      __$$MeetDataAddBasketItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketItemModel basketItemModel});

  $BasketItemModelCopyWith<$Res> get basketItemModel;
}

/// @nodoc
class __$$MeetDataAddBasketItemImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataAddBasketItemImpl>
    implements _$$MeetDataAddBasketItemImplCopyWith<$Res> {
  __$$MeetDataAddBasketItemImplCopyWithImpl(_$MeetDataAddBasketItemImpl _value,
      $Res Function(_$MeetDataAddBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketItemModel = null,
  }) {
    return _then(_$MeetDataAddBasketItemImpl(
      null == basketItemModel
          ? _value.basketItemModel
          : basketItemModel // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get basketItemModel {
    return $BasketItemModelCopyWith<$Res>(_value.basketItemModel, (value) {
      return _then(_value.copyWith(basketItemModel: value));
    });
  }
}

/// @nodoc

class _$MeetDataAddBasketItemImpl implements MeetDataAddBasketItem {
  const _$MeetDataAddBasketItemImpl(this.basketItemModel);

  @override
  final BasketItemModel basketItemModel;

  @override
  String toString() {
    return 'MeetDataEvent.addBasketItem(basketItemModel: $basketItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataAddBasketItemImpl &&
            (identical(other.basketItemModel, basketItemModel) ||
                other.basketItemModel == basketItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basketItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataAddBasketItemImplCopyWith<_$MeetDataAddBasketItemImpl>
      get copyWith => __$$MeetDataAddBasketItemImplCopyWithImpl<
          _$MeetDataAddBasketItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return addBasketItem(basketItemModel);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return addBasketItem?.call(basketItemModel);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (addBasketItem != null) {
      return addBasketItem(basketItemModel);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return addBasketItem(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return addBasketItem?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (addBasketItem != null) {
      return addBasketItem(this);
    }
    return orElse();
  }
}

abstract class MeetDataAddBasketItem implements MeetDataEvent {
  const factory MeetDataAddBasketItem(final BasketItemModel basketItemModel) =
      _$MeetDataAddBasketItemImpl;

  BasketItemModel get basketItemModel;
  @JsonKey(ignore: true)
  _$$MeetDataAddBasketItemImplCopyWith<_$MeetDataAddBasketItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataDeleteBasketItemImplCopyWith<$Res> {
  factory _$$MeetDataDeleteBasketItemImplCopyWith(
          _$MeetDataDeleteBasketItemImpl value,
          $Res Function(_$MeetDataDeleteBasketItemImpl) then) =
      __$$MeetDataDeleteBasketItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketItemModel basketItemModel});

  $BasketItemModelCopyWith<$Res> get basketItemModel;
}

/// @nodoc
class __$$MeetDataDeleteBasketItemImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res, _$MeetDataDeleteBasketItemImpl>
    implements _$$MeetDataDeleteBasketItemImplCopyWith<$Res> {
  __$$MeetDataDeleteBasketItemImplCopyWithImpl(
      _$MeetDataDeleteBasketItemImpl _value,
      $Res Function(_$MeetDataDeleteBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketItemModel = null,
  }) {
    return _then(_$MeetDataDeleteBasketItemImpl(
      null == basketItemModel
          ? _value.basketItemModel
          : basketItemModel // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get basketItemModel {
    return $BasketItemModelCopyWith<$Res>(_value.basketItemModel, (value) {
      return _then(_value.copyWith(basketItemModel: value));
    });
  }
}

/// @nodoc

class _$MeetDataDeleteBasketItemImpl implements MeetDataDeleteBasketItem {
  const _$MeetDataDeleteBasketItemImpl(this.basketItemModel);

  @override
  final BasketItemModel basketItemModel;

  @override
  String toString() {
    return 'MeetDataEvent.deleteBasketItem(basketItemModel: $basketItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataDeleteBasketItemImpl &&
            (identical(other.basketItemModel, basketItemModel) ||
                other.basketItemModel == basketItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basketItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataDeleteBasketItemImplCopyWith<_$MeetDataDeleteBasketItemImpl>
      get copyWith => __$$MeetDataDeleteBasketItemImplCopyWithImpl<
          _$MeetDataDeleteBasketItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return deleteBasketItem(basketItemModel);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return deleteBasketItem?.call(basketItemModel);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (deleteBasketItem != null) {
      return deleteBasketItem(basketItemModel);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return deleteBasketItem(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return deleteBasketItem?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (deleteBasketItem != null) {
      return deleteBasketItem(this);
    }
    return orElse();
  }
}

abstract class MeetDataDeleteBasketItem implements MeetDataEvent {
  const factory MeetDataDeleteBasketItem(
      final BasketItemModel basketItemModel) = _$MeetDataDeleteBasketItemImpl;

  BasketItemModel get basketItemModel;
  @JsonKey(ignore: true)
  _$$MeetDataDeleteBasketItemImplCopyWith<_$MeetDataDeleteBasketItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUserTakeThisBasketItemImplCopyWith<$Res> {
  factory _$$MeetDataUserTakeThisBasketItemImplCopyWith(
          _$MeetDataUserTakeThisBasketItemImpl value,
          $Res Function(_$MeetDataUserTakeThisBasketItemImpl) then) =
      __$$MeetDataUserTakeThisBasketItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTake, BasketItemModel basketItem, String userId});

  $BasketItemModelCopyWith<$Res> get basketItem;
}

/// @nodoc
class __$$MeetDataUserTakeThisBasketItemImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res,
        _$MeetDataUserTakeThisBasketItemImpl>
    implements _$$MeetDataUserTakeThisBasketItemImplCopyWith<$Res> {
  __$$MeetDataUserTakeThisBasketItemImplCopyWithImpl(
      _$MeetDataUserTakeThisBasketItemImpl _value,
      $Res Function(_$MeetDataUserTakeThisBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTake = null,
    Object? basketItem = null,
    Object? userId = null,
  }) {
    return _then(_$MeetDataUserTakeThisBasketItemImpl(
      null == isTake
          ? _value.isTake
          : isTake // ignore: cast_nullable_to_non_nullable
              as bool,
      null == basketItem
          ? _value.basketItem
          : basketItem // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get basketItem {
    return $BasketItemModelCopyWith<$Res>(_value.basketItem, (value) {
      return _then(_value.copyWith(basketItem: value));
    });
  }
}

/// @nodoc

class _$MeetDataUserTakeThisBasketItemImpl
    implements MeetDataUserTakeThisBasketItem {
  const _$MeetDataUserTakeThisBasketItemImpl(
      this.isTake, this.basketItem, this.userId);

  @override
  final bool isTake;
  @override
  final BasketItemModel basketItem;
  @override
  final String userId;

  @override
  String toString() {
    return 'MeetDataEvent.userTakeThisBasketItem(isTake: $isTake, basketItem: $basketItem, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUserTakeThisBasketItemImpl &&
            (identical(other.isTake, isTake) || other.isTake == isTake) &&
            (identical(other.basketItem, basketItem) ||
                other.basketItem == basketItem) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTake, basketItem, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUserTakeThisBasketItemImplCopyWith<
          _$MeetDataUserTakeThisBasketItemImpl>
      get copyWith => __$$MeetDataUserTakeThisBasketItemImplCopyWithImpl<
          _$MeetDataUserTakeThisBasketItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return userTakeThisBasketItem(isTake, basketItem, userId);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return userTakeThisBasketItem?.call(isTake, basketItem, userId);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (userTakeThisBasketItem != null) {
      return userTakeThisBasketItem(isTake, basketItem, userId);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return userTakeThisBasketItem(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return userTakeThisBasketItem?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (userTakeThisBasketItem != null) {
      return userTakeThisBasketItem(this);
    }
    return orElse();
  }
}

abstract class MeetDataUserTakeThisBasketItem implements MeetDataEvent {
  const factory MeetDataUserTakeThisBasketItem(
      final bool isTake,
      final BasketItemModel basketItem,
      final String userId) = _$MeetDataUserTakeThisBasketItemImpl;

  bool get isTake;
  BasketItemModel get basketItem;
  String get userId;
  @JsonKey(ignore: true)
  _$$MeetDataUserTakeThisBasketItemImplCopyWith<
          _$MeetDataUserTakeThisBasketItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataUserUseThisBasketItemImplCopyWith<$Res> {
  factory _$$MeetDataUserUseThisBasketItemImplCopyWith(
          _$MeetDataUserUseThisBasketItemImpl value,
          $Res Function(_$MeetDataUserUseThisBasketItemImpl) then) =
      __$$MeetDataUserUseThisBasketItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTake, BasketItemModel basketItem, String userId});

  $BasketItemModelCopyWith<$Res> get basketItem;
}

/// @nodoc
class __$$MeetDataUserUseThisBasketItemImplCopyWithImpl<$Res>
    extends _$MeetDataEventCopyWithImpl<$Res,
        _$MeetDataUserUseThisBasketItemImpl>
    implements _$$MeetDataUserUseThisBasketItemImplCopyWith<$Res> {
  __$$MeetDataUserUseThisBasketItemImplCopyWithImpl(
      _$MeetDataUserUseThisBasketItemImpl _value,
      $Res Function(_$MeetDataUserUseThisBasketItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTake = null,
    Object? basketItem = null,
    Object? userId = null,
  }) {
    return _then(_$MeetDataUserUseThisBasketItemImpl(
      null == isTake
          ? _value.isTake
          : isTake // ignore: cast_nullable_to_non_nullable
              as bool,
      null == basketItem
          ? _value.basketItem
          : basketItem // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get basketItem {
    return $BasketItemModelCopyWith<$Res>(_value.basketItem, (value) {
      return _then(_value.copyWith(basketItem: value));
    });
  }
}

/// @nodoc

class _$MeetDataUserUseThisBasketItemImpl
    implements MeetDataUserUseThisBasketItem {
  const _$MeetDataUserUseThisBasketItemImpl(
      this.isTake, this.basketItem, this.userId);

  @override
  final bool isTake;
  @override
  final BasketItemModel basketItem;
  @override
  final String userId;

  @override
  String toString() {
    return 'MeetDataEvent.userUseThisBasketItem(isTake: $isTake, basketItem: $basketItem, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataUserUseThisBasketItemImpl &&
            (identical(other.isTake, isTake) || other.isTake == isTake) &&
            (identical(other.basketItem, basketItem) ||
                other.basketItem == basketItem) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTake, basketItem, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataUserUseThisBasketItemImplCopyWith<
          _$MeetDataUserUseThisBasketItemImpl>
      get copyWith => __$$MeetDataUserUseThisBasketItemImplCopyWithImpl<
          _$MeetDataUserUseThisBasketItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function(MeetModel meetModel) add,
    required TResult Function(int meetId) delete,
    required TResult Function() dispose,
    required TResult Function(String userId, String titleLike) search,
    required TResult Function() unSearch,
    required TResult Function(int meetId) updateCurrMeetInfo,
    required TResult Function(int meetId) updateCurrMeetBasket,
    required TResult Function(int meetId) updateCurrMeetGuests,
    required TResult Function(String userId, int meetId) sendInvite,
    required TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)
        updateGuestStatus,
    required TResult Function(String userId, int meetId) removeGuestInvite,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        makeOrganizator,
    required TResult Function(
            String userId, int meetId, String currentChooseStatus)
        unMakeOrganizator,
    required TResult Function(BasketItemModel basketItemModel) addBasketItem,
    required TResult Function(BasketItemModel basketItemModel) deleteBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userTakeThisBasketItem,
    required TResult Function(
            bool isTake, BasketItemModel basketItem, String userId)
        userUseThisBasketItem,
  }) {
    return userUseThisBasketItem(isTake, basketItem, userId);
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
    TResult? Function(int meetId)? updateCurrMeetInfo,
    TResult? Function(int meetId)? updateCurrMeetBasket,
    TResult? Function(int meetId)? updateCurrMeetGuests,
    TResult? Function(String userId, int meetId)? sendInvite,
    TResult? Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult? Function(String userId, int meetId)? removeGuestInvite,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult? Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult? Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult? Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult? Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
  }) {
    return userUseThisBasketItem?.call(isTake, basketItem, userId);
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
    TResult Function(int meetId)? updateCurrMeetInfo,
    TResult Function(int meetId)? updateCurrMeetBasket,
    TResult Function(int meetId)? updateCurrMeetGuests,
    TResult Function(String userId, int meetId)? sendInvite,
    TResult Function(
            String userId, int meetId, GuestChooseAtMeetEnum guestChoose)?
        updateGuestStatus,
    TResult Function(String userId, int meetId)? removeGuestInvite,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        makeOrganizator,
    TResult Function(String userId, int meetId, String currentChooseStatus)?
        unMakeOrganizator,
    TResult Function(BasketItemModel basketItemModel)? addBasketItem,
    TResult Function(BasketItemModel basketItemModel)? deleteBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userTakeThisBasketItem,
    TResult Function(bool isTake, BasketItemModel basketItem, String userId)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (userUseThisBasketItem != null) {
      return userUseThisBasketItem(isTake, basketItem, userId);
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
    required TResult Function(MeetDataUpdateCurrMeetInfo value)
        updateCurrMeetInfo,
    required TResult Function(MeetDataUpdateCurrMeetBasket value)
        updateCurrMeetBasket,
    required TResult Function(MeetDataUpdateCurrMeetGuests value)
        updateCurrMeetGuests,
    required TResult Function(MeetDataSendInviteEvent value) sendInvite,
    required TResult Function(MeetDataUpdateGuestStatus value)
        updateGuestStatus,
    required TResult Function(MeetDataUpdateRemoveGuestInvite value)
        removeGuestInvite,
    required TResult Function(MeetDataMakeOrganizator value) makeOrganizator,
    required TResult Function(MeetDataUnMakeOrganizator value)
        unMakeOrganizator,
    required TResult Function(MeetDataAddBasketItem value) addBasketItem,
    required TResult Function(MeetDataDeleteBasketItem value) deleteBasketItem,
    required TResult Function(MeetDataUserTakeThisBasketItem value)
        userTakeThisBasketItem,
    required TResult Function(MeetDataUserUseThisBasketItem value)
        userUseThisBasketItem,
  }) {
    return userUseThisBasketItem(this);
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
    TResult? Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult? Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult? Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult? Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult? Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult? Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult? Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult? Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult? Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult? Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult? Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult? Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
  }) {
    return userUseThisBasketItem?.call(this);
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
    TResult Function(MeetDataUpdateCurrMeetInfo value)? updateCurrMeetInfo,
    TResult Function(MeetDataUpdateCurrMeetBasket value)? updateCurrMeetBasket,
    TResult Function(MeetDataUpdateCurrMeetGuests value)? updateCurrMeetGuests,
    TResult Function(MeetDataSendInviteEvent value)? sendInvite,
    TResult Function(MeetDataUpdateGuestStatus value)? updateGuestStatus,
    TResult Function(MeetDataUpdateRemoveGuestInvite value)? removeGuestInvite,
    TResult Function(MeetDataMakeOrganizator value)? makeOrganizator,
    TResult Function(MeetDataUnMakeOrganizator value)? unMakeOrganizator,
    TResult Function(MeetDataAddBasketItem value)? addBasketItem,
    TResult Function(MeetDataDeleteBasketItem value)? deleteBasketItem,
    TResult Function(MeetDataUserTakeThisBasketItem value)?
        userTakeThisBasketItem,
    TResult Function(MeetDataUserUseThisBasketItem value)?
        userUseThisBasketItem,
    required TResult orElse(),
  }) {
    if (userUseThisBasketItem != null) {
      return userUseThisBasketItem(this);
    }
    return orElse();
  }
}

abstract class MeetDataUserUseThisBasketItem implements MeetDataEvent {
  const factory MeetDataUserUseThisBasketItem(
      final bool isTake,
      final BasketItemModel basketItem,
      final String userId) = _$MeetDataUserUseThisBasketItemImpl;

  bool get isTake;
  BasketItemModel get basketItem;
  String get userId;
  @JsonKey(ignore: true)
  _$$MeetDataUserUseThisBasketItemImplCopyWith<
          _$MeetDataUserUseThisBasketItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
