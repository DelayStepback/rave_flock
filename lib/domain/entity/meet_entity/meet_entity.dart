import '../../../data/models/meet/meet_model.dart';

class GuestInfo {
  String username;
  String avatarUrl;

  GuestInfo(this.username, this.avatarUrl);
}

class MeetAdditionallyEntity {
  MeetModel meetModel;
  List<GuestInfo> guestsInfo;
  MeetAdditionallyEntity(this.meetModel, this.guestsInfo);
}
