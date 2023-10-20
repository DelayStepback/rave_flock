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
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_source_id')
  String get userSourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_target_id')
  String get userTargetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_source_tags')
  List<String> get userSourceTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_target_tags')
  List<String> get userTargetTags => throw _privateConstructorUsedError;
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
      {String id,
      @JsonKey(name: 'user_source_id') String userSourceId,
      @JsonKey(name: 'user_target_id') String userTargetId,
      @JsonKey(name: 'user_source_tags') List<String> userSourceTags,
      @JsonKey(name: 'user_target_tags') List<String> userTargetTags,
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
    Object? userSourceTags = null,
    Object? userTargetTags = null,
    Object? requestDate = null,
    Object? approveDate = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userSourceId: null == userSourceId
          ? _value.userSourceId
          : userSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userTargetId: null == userTargetId
          ? _value.userTargetId
          : userTargetId // ignore: cast_nullable_to_non_nullable
              as String,
      userSourceTags: null == userSourceTags
          ? _value.userSourceTags
          : userSourceTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userTargetTags: null == userTargetTags
          ? _value.userTargetTags
          : userTargetTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {String id,
      @JsonKey(name: 'user_source_id') String userSourceId,
      @JsonKey(name: 'user_target_id') String userTargetId,
      @JsonKey(name: 'user_source_tags') List<String> userSourceTags,
      @JsonKey(name: 'user_target_tags') List<String> userTargetTags,
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
    Object? userSourceTags = null,
    Object? userTargetTags = null,
    Object? requestDate = null,
    Object? approveDate = freezed,
    Object? status = null,
  }) {
    return _then(_$FriendshipModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userSourceId: null == userSourceId
          ? _value.userSourceId
          : userSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userTargetId: null == userTargetId
          ? _value.userTargetId
          : userTargetId // ignore: cast_nullable_to_non_nullable
              as String,
      userSourceTags: null == userSourceTags
          ? _value._userSourceTags
          : userSourceTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userTargetTags: null == userTargetTags
          ? _value._userTargetTags
          : userTargetTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      @JsonKey(name: 'user_source_tags')
      final List<String> userSourceTags = const [],
      @JsonKey(name: 'user_target_tags')
      final List<String> userTargetTags = const [],
      @JsonKey(name: 'request_date') required this.requestDate,
      @JsonKey(name: 'approve_date') this.approveDate,
      required this.status})
      : _userSourceTags = userSourceTags,
        _userTargetTags = userTargetTags,
        super._();

  factory _$FriendshipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendshipModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_source_id')
  final String userSourceId;
  @override
  @JsonKey(name: 'user_target_id')
  final String userTargetId;
  final List<String> _userSourceTags;
  @override
  @JsonKey(name: 'user_source_tags')
  List<String> get userSourceTags {
    if (_userSourceTags is EqualUnmodifiableListView) return _userSourceTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userSourceTags);
  }

  final List<String> _userTargetTags;
  @override
  @JsonKey(name: 'user_target_tags')
  List<String> get userTargetTags {
    if (_userTargetTags is EqualUnmodifiableListView) return _userTargetTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userTargetTags);
  }

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
    return 'FriendshipModel(id: $id, userSourceId: $userSourceId, userTargetId: $userTargetId, userSourceTags: $userSourceTags, userTargetTags: $userTargetTags, requestDate: $requestDate, approveDate: $approveDate, status: $status)';
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
            const DeepCollectionEquality()
                .equals(other._userSourceTags, _userSourceTags) &&
            const DeepCollectionEquality()
                .equals(other._userTargetTags, _userTargetTags) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.approveDate, approveDate) ||
                other.approveDate == approveDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userSourceId,
      userTargetId,
      const DeepCollectionEquality().hash(_userSourceTags),
      const DeepCollectionEquality().hash(_userTargetTags),
      requestDate,
      approveDate,
      status);

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
      {required final String id,
      @JsonKey(name: 'user_source_id') required final String userSourceId,
      @JsonKey(name: 'user_target_id') required final String userTargetId,
      @JsonKey(name: 'user_source_tags') final List<String> userSourceTags,
      @JsonKey(name: 'user_target_tags') final List<String> userTargetTags,
      @JsonKey(name: 'request_date') required final DateTime requestDate,
      @JsonKey(name: 'approve_date') final DateTime? approveDate,
      required final FriendshipStatusEnum status}) = _$FriendshipModelImpl;
  _FriendshipModel._() : super._();

  factory _FriendshipModel.fromJson(Map<String, dynamic> json) =
      _$FriendshipModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_source_id')
  String get userSourceId;
  @override
  @JsonKey(name: 'user_target_id')
  String get userTargetId;
  @override
  @JsonKey(name: 'user_source_tags')
  List<String> get userSourceTags;
  @override
  @JsonKey(name: 'user_target_tags')
  List<String> get userTargetTags;
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
