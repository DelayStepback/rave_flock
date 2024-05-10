import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';

import '../../../data/models/meet/meet_model.dart';

part 'meet_data_event.freezed.dart';

@freezed
class MeetDataEvent with _$MeetDataEvent {
  // init or update meets
  const factory MeetDataEvent.initialize(String userId) = MeetDataInitializeEvent;
  const factory MeetDataEvent.add(MeetModel meetModel) = MeetDataAddEvent;
  const factory MeetDataEvent.delete(int meetId) = MeetDataDeleteEvent;
  const factory MeetDataEvent.dispose() = MeetDataDisposeEvent;

  const factory MeetDataEvent.search(String userId, String titleLike) = MeetDataSearchEvent;
  const factory MeetDataEvent.unSearch() = MeetDataUnSearchEvent;

  // TODO:
  const factory MeetDataEvent.updateCurrMeetInfo(int meetId) = MeetDataUpdateCurrMeetInfo;
  const factory MeetDataEvent.updateCurrMeetBasket(int meetId) = MeetDataUpdateCurrMeetBasket;
  const factory MeetDataEvent.updateCurrMeetGuests(int meetId) = MeetDataUpdateCurrMeetGuests;

  // guests
  const factory MeetDataEvent.sendInvite(String userId, int meetId) = MeetDataSendInviteEvent;
  const factory MeetDataEvent.updateGuestStatus(String userId, int meetId, GuestChooseAtMeetEnum guestChoose) =
      MeetDataUpdateGuestStatus;
  const factory MeetDataEvent.removeGuestInvite(String userId, int meetId) = MeetDataUpdateRemoveGuestInvite;
  const factory MeetDataEvent.makeOrganizator(String userId, int meetId, String currentChooseStatus) =
      MeetDataMakeOrganizator;
  const factory MeetDataEvent.unMakeOrganizator(String userId, int meetId, String currentChooseStatus) =
      MeetDataUnMakeOrganizator;

  // basket
  const factory MeetDataEvent.addBasketItem(BasketItemModel basketItemModel) = MeetDataAddBasketItem;
  const factory MeetDataEvent.deleteBasketItem(BasketItemModel basketItemModel) = MeetDataDeleteBasketItem;
  const factory MeetDataEvent.userTakeThisBasketItem(bool isTake, BasketItemModel basketItem, String userId) =
      MeetDataUserTakeThisBasketItem;
  const factory MeetDataEvent.userUseThisBasketItem(bool isTake, BasketItemModel basketItem, String userId) =
      MeetDataUserUseThisBasketItem;
}
