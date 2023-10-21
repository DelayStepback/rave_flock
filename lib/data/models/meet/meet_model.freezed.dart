// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetModel _$MeetModelFromJson(Map<String, dynamic> json) {
  return _MeetModel.fromJson(json);
}

/// @nodoc
mixin _$MeetModel {
  @JsonKey(name: 'meet_id')
  int? get meetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meet_owner_id')
  String get meetOwnerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MeetStatusEnum get status => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'meet_is_public')
  bool get meetIsPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'contains_basket')
  bool get containsBasket => throw _privateConstructorUsedError;
  @JsonKey(name: 'meet_at')
  DateTime get meetAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'basket_end_time')
  DateTime? get basketEndTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetModelCopyWith<MeetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetModelCopyWith<$Res> {
  factory $MeetModelCopyWith(MeetModel value, $Res Function(MeetModel) then) =
      _$MeetModelCopyWithImpl<$Res, MeetModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'meet_id') int? meetId,
      @JsonKey(name: 'meet_owner_id') String meetOwnerId,
      String title,
      String? description,
      MeetStatusEnum status,
      String? location,
      @JsonKey(name: 'meet_is_public') bool meetIsPublic,
      @JsonKey(name: 'contains_basket') bool containsBasket,
      @JsonKey(name: 'meet_at') DateTime meetAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'basket_end_time') DateTime? basketEndTime});
}

/// @nodoc
class _$MeetModelCopyWithImpl<$Res, $Val extends MeetModel>
    implements $MeetModelCopyWith<$Res> {
  _$MeetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = freezed,
    Object? meetOwnerId = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? location = freezed,
    Object? meetIsPublic = null,
    Object? containsBasket = null,
    Object? meetAt = null,
    Object? createdAt = freezed,
    Object? basketEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      meetId: freezed == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int?,
      meetOwnerId: null == meetOwnerId
          ? _value.meetOwnerId
          : meetOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MeetStatusEnum,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      meetIsPublic: null == meetIsPublic
          ? _value.meetIsPublic
          : meetIsPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      containsBasket: null == containsBasket
          ? _value.containsBasket
          : containsBasket // ignore: cast_nullable_to_non_nullable
              as bool,
      meetAt: null == meetAt
          ? _value.meetAt
          : meetAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      basketEndTime: freezed == basketEndTime
          ? _value.basketEndTime
          : basketEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetModelImplCopyWith<$Res>
    implements $MeetModelCopyWith<$Res> {
  factory _$$MeetModelImplCopyWith(
          _$MeetModelImpl value, $Res Function(_$MeetModelImpl) then) =
      __$$MeetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'meet_id') int? meetId,
      @JsonKey(name: 'meet_owner_id') String meetOwnerId,
      String title,
      String? description,
      MeetStatusEnum status,
      String? location,
      @JsonKey(name: 'meet_is_public') bool meetIsPublic,
      @JsonKey(name: 'contains_basket') bool containsBasket,
      @JsonKey(name: 'meet_at') DateTime meetAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'basket_end_time') DateTime? basketEndTime});
}

/// @nodoc
class __$$MeetModelImplCopyWithImpl<$Res>
    extends _$MeetModelCopyWithImpl<$Res, _$MeetModelImpl>
    implements _$$MeetModelImplCopyWith<$Res> {
  __$$MeetModelImplCopyWithImpl(
      _$MeetModelImpl _value, $Res Function(_$MeetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = freezed,
    Object? meetOwnerId = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? location = freezed,
    Object? meetIsPublic = null,
    Object? containsBasket = null,
    Object? meetAt = null,
    Object? createdAt = freezed,
    Object? basketEndTime = freezed,
  }) {
    return _then(_$MeetModelImpl(
      meetId: freezed == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int?,
      meetOwnerId: null == meetOwnerId
          ? _value.meetOwnerId
          : meetOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MeetStatusEnum,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      meetIsPublic: null == meetIsPublic
          ? _value.meetIsPublic
          : meetIsPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      containsBasket: null == containsBasket
          ? _value.containsBasket
          : containsBasket // ignore: cast_nullable_to_non_nullable
              as bool,
      meetAt: null == meetAt
          ? _value.meetAt
          : meetAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      basketEndTime: freezed == basketEndTime
          ? _value.basketEndTime
          : basketEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetModelImpl extends _MeetModel {
  _$MeetModelImpl(
      {@JsonKey(name: 'meet_id') this.meetId,
      @JsonKey(name: 'meet_owner_id') required this.meetOwnerId,
      required this.title,
      this.description,
      required this.status,
      this.location,
      @JsonKey(name: 'meet_is_public') required this.meetIsPublic,
      @JsonKey(name: 'contains_basket') required this.containsBasket,
      @JsonKey(name: 'meet_at') required this.meetAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'basket_end_time') this.basketEndTime})
      : super._();

  factory _$MeetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetModelImplFromJson(json);

  @override
  @JsonKey(name: 'meet_id')
  final int? meetId;
  @override
  @JsonKey(name: 'meet_owner_id')
  final String meetOwnerId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final MeetStatusEnum status;
  @override
  final String? location;
  @override
  @JsonKey(name: 'meet_is_public')
  final bool meetIsPublic;
  @override
  @JsonKey(name: 'contains_basket')
  final bool containsBasket;
  @override
  @JsonKey(name: 'meet_at')
  final DateTime meetAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'basket_end_time')
  final DateTime? basketEndTime;

  @override
  String toString() {
    return 'MeetModel(meetId: $meetId, meetOwnerId: $meetOwnerId, title: $title, description: $description, status: $status, location: $location, meetIsPublic: $meetIsPublic, containsBasket: $containsBasket, meetAt: $meetAt, createdAt: $createdAt, basketEndTime: $basketEndTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetModelImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId) &&
            (identical(other.meetOwnerId, meetOwnerId) ||
                other.meetOwnerId == meetOwnerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.meetIsPublic, meetIsPublic) ||
                other.meetIsPublic == meetIsPublic) &&
            (identical(other.containsBasket, containsBasket) ||
                other.containsBasket == containsBasket) &&
            (identical(other.meetAt, meetAt) || other.meetAt == meetAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.basketEndTime, basketEndTime) ||
                other.basketEndTime == basketEndTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      meetId,
      meetOwnerId,
      title,
      description,
      status,
      location,
      meetIsPublic,
      containsBasket,
      meetAt,
      createdAt,
      basketEndTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetModelImplCopyWith<_$MeetModelImpl> get copyWith =>
      __$$MeetModelImplCopyWithImpl<_$MeetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetModelImplToJson(
      this,
    );
  }
}

abstract class _MeetModel extends MeetModel {
  factory _MeetModel(
          {@JsonKey(name: 'meet_id') final int? meetId,
          @JsonKey(name: 'meet_owner_id') required final String meetOwnerId,
          required final String title,
          final String? description,
          required final MeetStatusEnum status,
          final String? location,
          @JsonKey(name: 'meet_is_public') required final bool meetIsPublic,
          @JsonKey(name: 'contains_basket') required final bool containsBasket,
          @JsonKey(name: 'meet_at') required final DateTime meetAt,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'basket_end_time') final DateTime? basketEndTime}) =
      _$MeetModelImpl;
  _MeetModel._() : super._();

  factory _MeetModel.fromJson(Map<String, dynamic> json) =
      _$MeetModelImpl.fromJson;

  @override
  @JsonKey(name: 'meet_id')
  int? get meetId;
  @override
  @JsonKey(name: 'meet_owner_id')
  String get meetOwnerId;
  @override
  String get title;
  @override
  String? get description;
  @override
  MeetStatusEnum get status;
  @override
  String? get location;
  @override
  @JsonKey(name: 'meet_is_public')
  bool get meetIsPublic;
  @override
  @JsonKey(name: 'contains_basket')
  bool get containsBasket;
  @override
  @JsonKey(name: 'meet_at')
  DateTime get meetAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'basket_end_time')
  DateTime? get basketEndTime;
  @override
  @JsonKey(ignore: true)
  _$$MeetModelImplCopyWith<_$MeetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
