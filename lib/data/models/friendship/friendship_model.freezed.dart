// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friendship_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendshipModel _$FriendshipModelFromJson(Map<String, dynamic> json) {
  return _FriendshipModel.fromJson(json);
}

/// @nodoc
mixin _$FriendshipModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_source_id')
  String get userSourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_target_id')
  String get userTargetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_date')
  DateTime get requestDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'approve_date')
  DateTime? get approveDate => throw _privateConstructorUsedError;
  FriendshipStatusEnum get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendshipModelCopyWith<FriendshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendshipModelCopyWith<$Res> {
  factory $FriendshipModelCopyWith(
          FriendshipModel value, $Res Function(FriendshipModel) then) =
      _$FriendshipModelCopyWithImpl<$Res, FriendshipModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_source_id') String userSourceId,
      @JsonKey(name: 'user_target_id') String userTargetId,
      @JsonKey(name: 'request_date') DateTime requestDate,
      @JsonKey(name: 'approve_date') DateTime? approveDate,
      FriendshipStatusEnum status});
}

/// @nodoc
class _$FriendshipModelCopyWithImpl<$Res, $Val extends FriendshipModel>
    implements $FriendshipModelCopyWith<$Res> {
  _$FriendshipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userSourceId = null,
    Object? userTargetId = null,
    Object? requestDate = null,
    Object? approveDate = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userSourceId: null == userSourceId
          ? _value.userSourceId
          : userSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userTargetId: null == userTargetId
          ? _value.userTargetId
          : userTargetId // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approveDate: freezed == approveDate
          ? _value.approveDate
          : approveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FriendshipStatusEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendshipModelImplCopyWith<$Res>
    implements $FriendshipModelCopyWith<$Res> {
  factory _$$FriendshipModelImplCopyWith(_$FriendshipModelImpl value,
          $Res Function(_$FriendshipModelImpl) then) =
      __$$FriendshipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_source_id') String userSourceId,
      @JsonKey(name: 'user_target_id') String userTargetId,
      @JsonKey(name: 'request_date') DateTime requestDate,
      @JsonKey(name: 'approve_date') DateTime? approveDate,
      FriendshipStatusEnum status});
}

/// @nodoc
class __$$FriendshipModelImplCopyWithImpl<$Res>
    extends _$FriendshipModelCopyWithImpl<$Res, _$FriendshipModelImpl>
    implements _$$FriendshipModelImplCopyWith<$Res> {
  __$$FriendshipModelImplCopyWithImpl(
      _$FriendshipModelImpl _value, $Res Function(_$FriendshipModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userSourceId = null,
    Object? userTargetId = null,
    Object? requestDate = null,
    Object? approveDate = freezed,
    Object? status = null,
  }) {
    return _then(_$FriendshipModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userSourceId: null == userSourceId
          ? _value.userSourceId
          : userSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userTargetId: null == userTargetId
          ? _value.userTargetId
          : userTargetId // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approveDate: freezed == approveDate
          ? _value.approveDate
          : approveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FriendshipStatusEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendshipModelImpl extends _FriendshipModel {
  _$FriendshipModelImpl(
      {required this.id,
      @JsonKey(name: 'user_source_id') required this.userSourceId,
      @JsonKey(name: 'user_target_id') required this.userTargetId,
      @JsonKey(name: 'request_date') required this.requestDate,
      @JsonKey(name: 'approve_date') this.approveDate,
      required this.status})
      : super._();

  factory _$FriendshipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendshipModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_source_id')
  final String userSourceId;
  @override
  @JsonKey(name: 'user_target_id')
  final String userTargetId;
  @override
  @JsonKey(name: 'request_date')
  final DateTime requestDate;
  @override
  @JsonKey(name: 'approve_date')
  final DateTime? approveDate;
  @override
  final FriendshipStatusEnum status;

  @override
  String toString() {
    return 'FriendshipModel(id: $id, userSourceId: $userSourceId, userTargetId: $userTargetId, requestDate: $requestDate, approveDate: $approveDate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendshipModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userSourceId, userSourceId) ||
                other.userSourceId == userSourceId) &&
            (identical(other.userTargetId, userTargetId) ||
                other.userTargetId == userTargetId) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.approveDate, approveDate) ||
                other.approveDate == approveDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userSourceId, userTargetId,
      requestDate, approveDate, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendshipModelImplCopyWith<_$FriendshipModelImpl> get copyWith =>
      __$$FriendshipModelImplCopyWithImpl<_$FriendshipModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendshipModelImplToJson(
      this,
    );
  }
}

abstract class _FriendshipModel extends FriendshipModel {
  factory _FriendshipModel(
      {required final int id,
      @JsonKey(name: 'user_source_id') required final String userSourceId,
      @JsonKey(name: 'user_target_id') required final String userTargetId,
      @JsonKey(name: 'request_date') required final DateTime requestDate,
      @JsonKey(name: 'approve_date') final DateTime? approveDate,
      required final FriendshipStatusEnum status}) = _$FriendshipModelImpl;
  _FriendshipModel._() : super._();

  factory _FriendshipModel.fromJson(Map<String, dynamic> json) =
      _$FriendshipModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_source_id')
  String get userSourceId;
  @override
  @JsonKey(name: 'user_target_id')
  String get userTargetId;
  @override
  @JsonKey(name: 'request_date')
  DateTime get requestDate;
  @override
  @JsonKey(name: 'approve_date')
  DateTime? get approveDate;
  @override
  FriendshipStatusEnum get status;
  @override
  @JsonKey(ignore: true)
  _$$FriendshipModelImplCopyWith<_$FriendshipModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
