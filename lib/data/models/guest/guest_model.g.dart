// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestModelImpl _$$GuestModelImplFromJson(Map<String, dynamic> json) =>
    _$GuestModelImpl(
      meetId: json['meet_id'] as String,
      guestId: json['guest_id'] as String,
      status: $enumDecode(_$GuestChooseAtMeetEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$$GuestModelImplToJson(_$GuestModelImpl instance) =>
    <String, dynamic>{
      'meet_id': instance.meetId,
      'guest_id': instance.guestId,
      'status': _$GuestChooseAtMeetEnumEnumMap[instance.status]!,
    };

const _$GuestChooseAtMeetEnumEnumMap = {
  GuestChooseAtMeetEnum.none: 'none',
  GuestChooseAtMeetEnum.accepted: 'accepted',
  GuestChooseAtMeetEnum.denied: 'denied',
};
