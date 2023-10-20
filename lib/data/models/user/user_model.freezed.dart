// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_description')
  String? get profileDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_privacy')
  UserPrivacyEnum get userPrivacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'registered_at')
  DateTime get registeredAt => throw _privateConstructorUsedError;
  UserPermissionEnum get permission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      String? email,
      String username,
      String? nickname,
      String? location,
      String? mobile,
      @JsonKey(name: 'profile_description') String? profileDescription,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'user_privacy') UserPrivacyEnum userPrivacy,
      @JsonKey(name: 'registered_at') DateTime registeredAt,
      UserPermissionEnum permission});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = freezed,
    Object? username = null,
    Object? nickname = freezed,
    Object? location = freezed,
    Object? mobile = freezed,
    Object? profileDescription = freezed,
    Object? imageUrl = freezed,
    Object? userPrivacy = null,
    Object? registeredAt = null,
    Object? permission = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDescription: freezed == profileDescription
          ? _value.profileDescription
          : profileDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userPrivacy: null == userPrivacy
          ? _value.userPrivacy
          : userPrivacy // ignore: cast_nullable_to_non_nullable
              as UserPrivacyEnum,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as UserPermissionEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      String? email,
      String username,
      String? nickname,
      String? location,
      String? mobile,
      @JsonKey(name: 'profile_description') String? profileDescription,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'user_privacy') UserPrivacyEnum userPrivacy,
      @JsonKey(name: 'registered_at') DateTime registeredAt,
      UserPermissionEnum permission});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = freezed,
    Object? username = null,
    Object? nickname = freezed,
    Object? location = freezed,
    Object? mobile = freezed,
    Object? profileDescription = freezed,
    Object? imageUrl = freezed,
    Object? userPrivacy = null,
    Object? registeredAt = null,
    Object? permission = null,
  }) {
    return _then(_$UserModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDescription: freezed == profileDescription
          ? _value.profileDescription
          : profileDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userPrivacy: null == userPrivacy
          ? _value.userPrivacy
          : userPrivacy // ignore: cast_nullable_to_non_nullable
              as UserPrivacyEnum,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as UserPermissionEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'userId') required this.userId,
      this.email,
      required this.username,
      this.nickname,
      this.location,
      this.mobile,
      @JsonKey(name: 'profile_description') this.profileDescription,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'user_privacy') required this.userPrivacy,
      @JsonKey(name: 'registered_at') required this.registeredAt,
      required this.permission})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  final String? email;
  @override
  final String username;
  @override
  final String? nickname;
  @override
  final String? location;
  @override
  final String? mobile;
  @override
  @JsonKey(name: 'profile_description')
  final String? profileDescription;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'user_privacy')
  final UserPrivacyEnum userPrivacy;
  @override
  @JsonKey(name: 'registered_at')
  final DateTime registeredAt;
  @override
  final UserPermissionEnum permission;

  @override
  String toString() {
    return 'UserModel(userId: $userId, email: $email, username: $username, nickname: $nickname, location: $location, mobile: $mobile, profileDescription: $profileDescription, imageUrl: $imageUrl, userPrivacy: $userPrivacy, registeredAt: $registeredAt, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.profileDescription, profileDescription) ||
                other.profileDescription == profileDescription) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.userPrivacy, userPrivacy) ||
                other.userPrivacy == userPrivacy) &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.permission, permission) ||
                other.permission == permission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      username,
      nickname,
      location,
      mobile,
      profileDescription,
      imageUrl,
      userPrivacy,
      registeredAt,
      permission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {@JsonKey(name: 'userId') required final String userId,
      final String? email,
      required final String username,
      final String? nickname,
      final String? location,
      final String? mobile,
      @JsonKey(name: 'profile_description') final String? profileDescription,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'user_privacy') required final UserPrivacyEnum userPrivacy,
      @JsonKey(name: 'registered_at') required final DateTime registeredAt,
      required final UserPermissionEnum permission}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  String? get email;
  @override
  String get username;
  @override
  String? get nickname;
  @override
  String? get location;
  @override
  String? get mobile;
  @override
  @JsonKey(name: 'profile_description')
  String? get profileDescription;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'user_privacy')
  UserPrivacyEnum get userPrivacy;
  @override
  @JsonKey(name: 'registered_at')
  DateTime get registeredAt;
  @override
  UserPermissionEnum get permission;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
