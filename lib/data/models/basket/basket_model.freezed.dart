// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketModel _$BasketModelFromJson(Map<String, dynamic> json) {
  return _BasketModel.fromJson(json);
}

/// @nodoc
mixin _$BasketModel {
  @JsonKey(name: 'basket_items')
  List<BasketItemModel> get basketItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketModelCopyWith<BasketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketModelCopyWith<$Res> {
  factory $BasketModelCopyWith(
          BasketModel value, $Res Function(BasketModel) then) =
      _$BasketModelCopyWithImpl<$Res, BasketModel>;
  @useResult
  $Res call({@JsonKey(name: 'basket_items') List<BasketItemModel> basketItems});
}

/// @nodoc
class _$BasketModelCopyWithImpl<$Res, $Val extends BasketModel>
    implements $BasketModelCopyWith<$Res> {
  _$BasketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketItems = null,
  }) {
    return _then(_value.copyWith(
      basketItems: null == basketItems
          ? _value.basketItems
          : basketItems // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketModelImplCopyWith<$Res>
    implements $BasketModelCopyWith<$Res> {
  factory _$$BasketModelImplCopyWith(
          _$BasketModelImpl value, $Res Function(_$BasketModelImpl) then) =
      __$$BasketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'basket_items') List<BasketItemModel> basketItems});
}

/// @nodoc
class __$$BasketModelImplCopyWithImpl<$Res>
    extends _$BasketModelCopyWithImpl<$Res, _$BasketModelImpl>
    implements _$$BasketModelImplCopyWith<$Res> {
  __$$BasketModelImplCopyWithImpl(
      _$BasketModelImpl _value, $Res Function(_$BasketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketItems = null,
  }) {
    return _then(_$BasketModelImpl(
      basketItems: null == basketItems
          ? _value._basketItems
          : basketItems // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketModelImpl extends _BasketModel {
  _$BasketModelImpl(
      {@JsonKey(name: 'basket_items')
      required final List<BasketItemModel> basketItems})
      : _basketItems = basketItems,
        super._();

  factory _$BasketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketModelImplFromJson(json);

  final List<BasketItemModel> _basketItems;
  @override
  @JsonKey(name: 'basket_items')
  List<BasketItemModel> get basketItems {
    if (_basketItems is EqualUnmodifiableListView) return _basketItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basketItems);
  }

  @override
  String toString() {
    return 'BasketModel(basketItems: $basketItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketModelImpl &&
            const DeepCollectionEquality()
                .equals(other._basketItems, _basketItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_basketItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketModelImplCopyWith<_$BasketModelImpl> get copyWith =>
      __$$BasketModelImplCopyWithImpl<_$BasketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketModelImplToJson(
      this,
    );
  }
}

abstract class _BasketModel extends BasketModel {
  factory _BasketModel(
      {@JsonKey(name: 'basket_items')
      required final List<BasketItemModel> basketItems}) = _$BasketModelImpl;
  _BasketModel._() : super._();

  factory _BasketModel.fromJson(Map<String, dynamic> json) =
      _$BasketModelImpl.fromJson;

  @override
  @JsonKey(name: 'basket_items')
  List<BasketItemModel> get basketItems;
  @override
  @JsonKey(ignore: true)
  _$$BasketModelImplCopyWith<_$BasketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
