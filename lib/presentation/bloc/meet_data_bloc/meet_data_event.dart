import 'package:freezed_annotation/freezed_annotation.dart';

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

  const factory MeetDataEvent.sendInvite(String userId,int meetId) = MeetDataSendInviteEvent;

  // TODO:
  const factory MeetDataEvent.updateCurrMeetInfo(int meetId) = MeetDataUpdateCurrMeetInfo;
  const factory MeetDataEvent.updateCurrMeetBasket(int meetId) = MeetDataUpdateCurrMeetBasket;
  const factory MeetDataEvent.updateCurrMeetGuests(int meetId) = MeetDataUpdateCurrMeetGuests;


  // Basket
  const factory MeetDataEvent.takeThisItem(int meetId, int itemId, bool isTake) = MeetDataUserTakeThisItem;
  const factory MeetDataEvent.useThisItem(int meetId, int itemId, bool isUse) = MeetDataUserUseThisItem;


}
