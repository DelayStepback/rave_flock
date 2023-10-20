// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketItemModel _$BasketItemModelFromJson(Map<String, dynamic> json) {
  return _BasketItemModel.fromJson(json);
}

/// @nodoc
mixin _$BasketItemModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_user_id')
  String get createdByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'grabbed_by_user_id')
  String? get grabbedByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'who_will_use_ids')
  List<String>? get whoWillUseIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketItemModelCopyWith<BasketItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketItemModelCopyWith<$Res> {
  factory $BasketItemModelCopyWith(
          BasketItemModel value, $Res Function(BasketItemModel) then) =
      _$BasketItemModelCopyWithImpl<$Res, BasketItemModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? cost,
      @JsonKey(name: 'created_by_user_id') String createdByUserId,
      @JsonKey(name: 'grabbed_by_user_id') String? grabbedByUserId,
      @JsonKey(name: 'who_will_use_ids') List<String>? whoWillUseIds,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$BasketItemModelCopyWithImpl<$Res, $Val extends BasketItemModel>
    implements $BasketItemModelCopyWith<$Res> {
  _$BasketItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cost = freezed,
    Object? createdByUserId = null,
    Object? grabbedByUserId = freezed,
    Object? whoWillUseIds = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      grabbedByUserId: freezed == grabbedByUserId
          ? _value.grabbedByUserId
          : grabbedByUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      whoWillUseIds: freezed == whoWillUseIds
          ? _value.whoWillUseIds
          : whoWillUseIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketItemModelImplCopyWith<$Res>
    implements $BasketItemModelCopyWith<$Res> {
  factory _$$BasketItemModelImplCopyWith(_$BasketItemModelImpl value,
          $Res Function(_$BasketItemModelImpl) then) =
      __$$BasketItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? cost,
      @JsonKey(name: 'created_by_user_id') String createdByUserId,
      @JsonKey(name: 'grabbed_by_user_id') String? grabbedByUserId,
      @JsonKey(name: 'who_will_use_ids') List<String>? whoWillUseIds,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$BasketItemModelImplCopyWithImpl<$Res>
    extends _$BasketItemModelCopyWithImpl<$Res, _$BasketItemModelImpl>
    implements _$$BasketItemModelImplCopyWith<$Res> {
  __$$BasketItemModelImplCopyWithImpl(
      _$BasketItemModelImpl _value, $Res Function(_$BasketItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cost = freezed,
    Object? createdByUserId = null,
    Object? grabbedByUserId = freezed,
    Object? whoWillUseIds = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$BasketItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      grabbedByUserId: freezed == grabbedByUserId
          ? _value.grabbedByUserId
          : grabbedByUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      whoWillUseIds: freezed == whoWillUseIds
          ? _value._whoWillUseIds
          : whoWillUseIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketItemModelImpl extends _BasketItemModel {
  _$BasketItemModelImpl(
      {required this.id,
      required this.title,
      this.cost,
      @JsonKey(name: 'created_by_user_id') required this.createdByUserId,
      @JsonKey(name: 'grabbed_by_user_id') required this.grabbedByUserId,
      @JsonKey(name: 'who_will_use_ids')
      required final List<String>? whoWillUseIds,
      @JsonKey(name: 'image_url') required this.imageUrl})
      : _whoWillUseIds = whoWillUseIds,
        super._();

  factory _$BasketItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketItemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? cost;
  @override
  @JsonKey(name: 'created_by_user_id')
  final String createdByUserId;
  @override
  @JsonKey(name: 'grabbed_by_user_id')
  final String? grabbedByUserId;
  final List<String>? _whoWillUseIds;
  @override
  @JsonKey(name: 'who_will_use_ids')
  List<String>? get whoWillUseIds {
    final value = _whoWillUseIds;
    if (value == null) return null;
    if (_whoWillUseIds is EqualUnmodifiableListView) return _whoWillUseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'BasketItemModel(id: $id, title: $title, cost: $cost, createdByUserId: $createdByUserId, grabbedByUserId: $grabbedByUserId, whoWillUseIds: $whoWillUseIds, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            (identical(other.grabbedByUserId, grabbedByUserId) ||
                other.grabbedByUserId == grabbedByUserId) &&
            const DeepCollectionEquality()
                .equals(other._whoWillUseIds, _whoWillUseIds) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      cost,
      createdByUserId,
      grabbedByUserId,
      const DeepCollectionEquality().hash(_whoWillUseIds),
      imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketItemModelImplCopyWith<_$BasketItemModelImpl> get copyWith =>
      __$$BasketItemModelImplCopyWithImpl<_$BasketItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketItemModelImplToJson(
      this,
    );
  }
}

abstract class _BasketItemModel extends BasketItemModel {
  factory _BasketItemModel(
          {required final String id,
          required final String title,
          final String? cost,
          @JsonKey(name: 'created_by_user_id')
          required final String createdByUserId,
          @JsonKey(name: 'grabbed_by_user_id')
          required final String? grabbedByUserId,
          @JsonKey(name: 'who_will_use_ids')
          required final List<String>? whoWillUseIds,
          @JsonKey(name: 'image_url') required final String? imageUrl}) =
      _$BasketItemModelImpl;
  _BasketItemModel._() : super._();

  factory _BasketItemModel.fromJson(Map<String, dynamic> json) =
      _$BasketItemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get cost;
  @override
  @JsonKey(name: 'created_by_user_id')
  String get createdByUserId;
  @override
  @JsonKey(name: 'grabbed_by_user_id')
  String? get grabbedByUserId;
  @override
  @JsonKey(name: 'who_will_use_ids')
  List<String>? get whoWillUseIds;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$BasketItemModelImplCopyWith<_$BasketItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
