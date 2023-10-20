// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestModel _$GuestModelFromJson(Map<String, dynamic> json) {
  return _GuestModel.fromJson(json);
}

/// @nodoc
mixin _$GuestModel {
  @JsonKey(name: 'meet_id')
  String get meetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'guest_id')
  String get guestId => throw _privateConstructorUsedError;
  GuestChooseAtMeetEnum get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestModelCopyWith<GuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestModelCopyWith<$Res> {
  factory $GuestModelCopyWith(
          GuestModel value, $Res Function(GuestModel) then) =
      _$GuestModelCopyWithImpl<$Res, GuestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'meet_id') String meetId,
      @JsonKey(name: 'guest_id') String guestId,
      GuestChooseAtMeetEnum status});
}

/// @nodoc
class _$GuestModelCopyWithImpl<$Res, $Val extends GuestModel>
    implements $GuestModelCopyWith<$Res> {
  _$GuestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
    Object? guestId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      meetId: null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: null == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GuestChooseAtMeetEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestModelImplCopyWith<$Res>
    implements $GuestModelCopyWith<$Res> {
  factory _$$GuestModelImplCopyWith(
          _$GuestModelImpl value, $Res Function(_$GuestModelImpl) then) =
      __$$GuestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'meet_id') String meetId,
      @JsonKey(name: 'guest_id') String guestId,
      GuestChooseAtMeetEnum status});
}

/// @nodoc
class __$$GuestModelImplCopyWithImpl<$Res>
    extends _$GuestModelCopyWithImpl<$Res, _$GuestModelImpl>
    implements _$$GuestModelImplCopyWith<$Res> {
  __$$GuestModelImplCopyWithImpl(
      _$GuestModelImpl _value, $Res Function(_$GuestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
    Object? guestId = null,
    Object? status = null,
  }) {
    return _then(_$GuestModelImpl(
      meetId: null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as String,
      guestId: null == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GuestChooseAtMeetEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestModelImpl extends _GuestModel {
  _$GuestModelImpl(
      {@JsonKey(name: 'meet_id') required this.meetId,
      @JsonKey(name: 'guest_id') required this.guestId,
      required this.status})
      : super._();

  factory _$GuestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestModelImplFromJson(json);

  @override
  @JsonKey(name: 'meet_id')
  final String meetId;
  @override
  @JsonKey(name: 'guest_id')
  final String guestId;
  @override
  final GuestChooseAtMeetEnum status;

  @override
  String toString() {
    return 'GuestModel(meetId: $meetId, guestId: $guestId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestModelImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.guestId, guestId) || other.guestId == guestId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meetId, guestId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestModelImplCopyWith<_$GuestModelImpl> get copyWith =>
      __$$GuestModelImplCopyWithImpl<_$GuestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestModelImplToJson(
      this,
    );
  }
}

abstract class _GuestModel extends GuestModel {
  factory _GuestModel(
      {@JsonKey(name: 'meet_id') required final String meetId,
      @JsonKey(name: 'guest_id') required final String guestId,
      required final GuestChooseAtMeetEnum status}) = _$GuestModelImpl;
  _GuestModel._() : super._();

  factory _GuestModel.fromJson(Map<String, dynamic> json) =
      _$GuestModelImpl.fromJson;

  @override
  @JsonKey(name: 'meet_id')
  String get meetId;
  @override
  @JsonKey(name: 'guest_id')
  String get guestId;
  @override
  GuestChooseAtMeetEnum get status;
  @override
  @JsonKey(ignore: true)
  _$$GuestModelImplCopyWith<_$GuestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
