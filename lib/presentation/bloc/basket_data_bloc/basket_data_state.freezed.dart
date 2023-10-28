// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<BasketItemModel> allBasketData) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<BasketItemModel> allBasketData)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<BasketItemModel> allBasketData)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasketDataInit value) init,
    required TResult Function(_BasketDataLoaded value) loaded,
    required TResult Function(_BasketDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasketDataInit value)? init,
    TResult? Function(_BasketDataLoaded value)? loaded,
    TResult? Function(_BasketDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasketDataInit value)? init,
    TResult Function(_BasketDataLoaded value)? loaded,
    TResult Function(_BasketDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketDataStateCopyWith<$Res> {
  factory $BasketDataStateCopyWith(
          BasketDataState value, $Res Function(BasketDataState) then) =
      _$BasketDataStateCopyWithImpl<$Res, BasketDataState>;
}

/// @nodoc
class _$BasketDataStateCopyWithImpl<$Res, $Val extends BasketDataState>
    implements $BasketDataStateCopyWith<$Res> {
  _$BasketDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BasketDataInitImplCopyWith<$Res> {
  factory _$$BasketDataInitImplCopyWith(_$BasketDataInitImpl value,
          $Res Function(_$BasketDataInitImpl) then) =
      __$$BasketDataInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BasketDataInitImplCopyWithImpl<$Res>
    extends _$BasketDataStateCopyWithImpl<$Res, _$BasketDataInitImpl>
    implements _$$BasketDataInitImplCopyWith<$Res> {
  __$$BasketDataInitImplCopyWithImpl(
      _$BasketDataInitImpl _value, $Res Function(_$BasketDataInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BasketDataInitImpl implements _BasketDataInit {
  const _$BasketDataInitImpl();

  @override
  String toString() {
    return 'BasketDataState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BasketDataInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<BasketItemModel> allBasketData) loaded,
    required TResult Function(String error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<BasketItemModel> allBasketData)? loaded,
    TResult? Function(String error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<BasketItemModel> allBasketData)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasketDataInit value) init,
    required TResult Function(_BasketDataLoaded value) loaded,
    required TResult Function(_BasketDataError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasketDataInit value)? init,
    TResult? Function(_BasketDataLoaded value)? loaded,
    TResult? Function(_BasketDataError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasketDataInit value)? init,
    TResult Function(_BasketDataLoaded value)? loaded,
    TResult Function(_BasketDataError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _BasketDataInit implements BasketDataState {
  const factory _BasketDataInit() = _$BasketDataInitImpl;
}

/// @nodoc
abstract class _$$BasketDataLoadedImplCopyWith<$Res> {
  factory _$$BasketDataLoadedImplCopyWith(_$BasketDataLoadedImpl value,
          $Res Function(_$BasketDataLoadedImpl) then) =
      __$$BasketDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BasketItemModel> allBasketData});
}

/// @nodoc
class __$$BasketDataLoadedImplCopyWithImpl<$Res>
    extends _$BasketDataStateCopyWithImpl<$Res, _$BasketDataLoadedImpl>
    implements _$$BasketDataLoadedImplCopyWith<$Res> {
  __$$BasketDataLoadedImplCopyWithImpl(_$BasketDataLoadedImpl _value,
      $Res Function(_$BasketDataLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allBasketData = null,
  }) {
    return _then(_$BasketDataLoadedImpl(
      allBasketData: null == allBasketData
          ? _value._allBasketData
          : allBasketData // ignore: cast_nullable_to_non_nullable
              as List<BasketItemModel>,
    ));
  }
}

/// @nodoc

class _$BasketDataLoadedImpl implements _BasketDataLoaded {
  const _$BasketDataLoadedImpl(
      {required final List<BasketItemModel> allBasketData})
      : _allBasketData = allBasketData;

  final List<BasketItemModel> _allBasketData;
  @override
  List<BasketItemModel> get allBasketData {
    if (_allBasketData is EqualUnmodifiableListView) return _allBasketData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBasketData);
  }

  @override
  String toString() {
    return 'BasketDataState.loaded(allBasketData: $allBasketData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allBasketData, _allBasketData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allBasketData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataLoadedImplCopyWith<_$BasketDataLoadedImpl> get copyWith =>
      __$$BasketDataLoadedImplCopyWithImpl<_$BasketDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<BasketItemModel> allBasketData) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(allBasketData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<BasketItemModel> allBasketData)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(allBasketData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<BasketItemModel> allBasketData)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allBasketData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasketDataInit value) init,
    required TResult Function(_BasketDataLoaded value) loaded,
    required TResult Function(_BasketDataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasketDataInit value)? init,
    TResult? Function(_BasketDataLoaded value)? loaded,
    TResult? Function(_BasketDataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasketDataInit value)? init,
    TResult Function(_BasketDataLoaded value)? loaded,
    TResult Function(_BasketDataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _BasketDataLoaded implements BasketDataState {
  const factory _BasketDataLoaded(
          {required final List<BasketItemModel> allBasketData}) =
      _$BasketDataLoadedImpl;

  List<BasketItemModel> get allBasketData;
  @JsonKey(ignore: true)
  _$$BasketDataLoadedImplCopyWith<_$BasketDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketDataErrorImplCopyWith<$Res> {
  factory _$$BasketDataErrorImplCopyWith(_$BasketDataErrorImpl value,
          $Res Function(_$BasketDataErrorImpl) then) =
      __$$BasketDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BasketDataErrorImplCopyWithImpl<$Res>
    extends _$BasketDataStateCopyWithImpl<$Res, _$BasketDataErrorImpl>
    implements _$$BasketDataErrorImplCopyWith<$Res> {
  __$$BasketDataErrorImplCopyWithImpl(
      _$BasketDataErrorImpl _value, $Res Function(_$BasketDataErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BasketDataErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasketDataErrorImpl implements _BasketDataError {
  const _$BasketDataErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BasketDataState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataErrorImplCopyWith<_$BasketDataErrorImpl> get copyWith =>
      __$$BasketDataErrorImplCopyWithImpl<_$BasketDataErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<BasketItemModel> allBasketData) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<BasketItemModel> allBasketData)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<BasketItemModel> allBasketData)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasketDataInit value) init,
    required TResult Function(_BasketDataLoaded value) loaded,
    required TResult Function(_BasketDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasketDataInit value)? init,
    TResult? Function(_BasketDataLoaded value)? loaded,
    TResult? Function(_BasketDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasketDataInit value)? init,
    TResult Function(_BasketDataLoaded value)? loaded,
    TResult Function(_BasketDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BasketDataError implements BasketDataState {
  const factory _BasketDataError({required final String error}) =
      _$BasketDataErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$BasketDataErrorImplCopyWith<_$BasketDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
