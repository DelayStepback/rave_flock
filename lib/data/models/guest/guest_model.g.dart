// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestModelImpl _$$GuestModelImplFromJson(Map<String, dynamic> json) =>
    _$GuestModelImpl(
      meetId: json['meet_id'] as int,
      userId: json['user_id'] as String,
      status: $enumDecode(_$GuestChooseAtMeetEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$$GuestModelImplToJson(_$GuestModelImpl instance) =>
    <String, dynamic>{
      'meet_id': instance.meetId,
      'user_id': instance.userId,
      'status': _$GuestChooseAtMeetEnumEnumMap[instance.status]!,
    };

const _$GuestChooseAtMeetEnumEnumMap = {
  GuestChooseAtMeetEnum.none: 'none',
  GuestChooseAtMeetEnum.accepted: 'accepted',
  GuestChooseAtMeetEnum.organizator: 'organizator',
  GuestChooseAtMeetEnum.denied: 'denied',
};
