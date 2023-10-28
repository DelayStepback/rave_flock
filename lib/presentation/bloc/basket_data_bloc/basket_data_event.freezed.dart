// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int meetId) initialize,
    required TResult Function(BasketItemModel basketItemModel) add,
    required TResult Function(BasketItemModel basketItemModel) delete,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int meetId)? initialize,
    TResult? Function(BasketItemModel basketItemModel)? add,
    TResult? Function(BasketItemModel basketItemModel)? delete,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int meetId)? initialize,
    TResult Function(BasketItemModel basketItemModel)? add,
    TResult Function(BasketItemModel basketItemModel)? delete,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketDataInitializeEvent value) initialize,
    required TResult Function(BasketDataAddEvent value) add,
    required TResult Function(BasketDataDeleteEvent value) delete,
    required TResult Function(BasketDataDisposeEvent value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketDataInitializeEvent value)? initialize,
    TResult? Function(BasketDataAddEvent value)? add,
    TResult? Function(BasketDataDeleteEvent value)? delete,
    TResult? Function(BasketDataDisposeEvent value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketDataInitializeEvent value)? initialize,
    TResult Function(BasketDataAddEvent value)? add,
    TResult Function(BasketDataDeleteEvent value)? delete,
    TResult Function(BasketDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketDataEventCopyWith<$Res> {
  factory $BasketDataEventCopyWith(
          BasketDataEvent value, $Res Function(BasketDataEvent) then) =
      _$BasketDataEventCopyWithImpl<$Res, BasketDataEvent>;
}

/// @nodoc
class _$BasketDataEventCopyWithImpl<$Res, $Val extends BasketDataEvent>
    implements $BasketDataEventCopyWith<$Res> {
  _$BasketDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BasketDataInitializeEventImplCopyWith<$Res> {
  factory _$$BasketDataInitializeEventImplCopyWith(
          _$BasketDataInitializeEventImpl value,
          $Res Function(_$BasketDataInitializeEventImpl) then) =
      __$$BasketDataInitializeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int meetId});
}

/// @nodoc
class __$$BasketDataInitializeEventImplCopyWithImpl<$Res>
    extends _$BasketDataEventCopyWithImpl<$Res, _$BasketDataInitializeEventImpl>
    implements _$$BasketDataInitializeEventImplCopyWith<$Res> {
  __$$BasketDataInitializeEventImplCopyWithImpl(
      _$BasketDataInitializeEventImpl _value,
      $Res Function(_$BasketDataInitializeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetId = null,
  }) {
    return _then(_$BasketDataInitializeEventImpl(
      null == meetId
          ? _value.meetId
          : meetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BasketDataInitializeEventImpl implements BasketDataInitializeEvent {
  const _$BasketDataInitializeEventImpl(this.meetId);

  @override
  final int meetId;

  @override
  String toString() {
    return 'BasketDataEvent.initialize(meetId: $meetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataInitializeEventImpl &&
            (identical(other.meetId, meetId) || other.meetId == meetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataInitializeEventImplCopyWith<_$BasketDataInitializeEventImpl>
      get copyWith => __$$BasketDataInitializeEventImplCopyWithImpl<
          _$BasketDataInitializeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int meetId) initialize,
    required TResult Function(BasketItemModel basketItemModel) add,
    required TResult Function(BasketItemModel basketItemModel) delete,
    required TResult Function() dispose,
  }) {
    return initialize(meetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int meetId)? initialize,
    TResult? Function(BasketItemModel basketItemModel)? add,
    TResult? Function(BasketItemModel basketItemModel)? delete,
    TResult? Function()? dispose,
  }) {
    return initialize?.call(meetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int meetId)? initialize,
    TResult Function(BasketItemModel basketItemModel)? add,
    TResult Function(BasketItemModel basketItemModel)? delete,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(meetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketDataInitializeEvent value) initialize,
    required TResult Function(BasketDataAddEvent value) add,
    required TResult Function(BasketDataDeleteEvent value) delete,
    required TResult Function(BasketDataDisposeEvent value) dispose,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketDataInitializeEvent value)? initialize,
    TResult? Function(BasketDataAddEvent value)? add,
    TResult? Function(BasketDataDeleteEvent value)? delete,
    TResult? Function(BasketDataDisposeEvent value)? dispose,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketDataInitializeEvent value)? initialize,
    TResult Function(BasketDataAddEvent value)? add,
    TResult Function(BasketDataDeleteEvent value)? delete,
    TResult Function(BasketDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class BasketDataInitializeEvent implements BasketDataEvent {
  const factory BasketDataInitializeEvent(final int meetId) =
      _$BasketDataInitializeEventImpl;

  int get meetId;
  @JsonKey(ignore: true)
  _$$BasketDataInitializeEventImplCopyWith<_$BasketDataInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketDataAddEventImplCopyWith<$Res> {
  factory _$$BasketDataAddEventImplCopyWith(_$BasketDataAddEventImpl value,
          $Res Function(_$BasketDataAddEventImpl) then) =
      __$$BasketDataAddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketItemModel basketItemModel});

  $BasketItemModelCopyWith<$Res> get basketItemModel;
}

/// @nodoc
class __$$BasketDataAddEventImplCopyWithImpl<$Res>
    extends _$BasketDataEventCopyWithImpl<$Res, _$BasketDataAddEventImpl>
    implements _$$BasketDataAddEventImplCopyWith<$Res> {
  __$$BasketDataAddEventImplCopyWithImpl(_$BasketDataAddEventImpl _value,
      $Res Function(_$BasketDataAddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketItemModel = null,
  }) {
    return _then(_$BasketDataAddEventImpl(
      null == basketItemModel
          ? _value.basketItemModel
          : basketItemModel // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get basketItemModel {
    return $BasketItemModelCopyWith<$Res>(_value.basketItemModel, (value) {
      return _then(_value.copyWith(basketItemModel: value));
    });
  }
}

/// @nodoc

class _$BasketDataAddEventImpl implements BasketDataAddEvent {
  const _$BasketDataAddEventImpl(this.basketItemModel);

  @override
  final BasketItemModel basketItemModel;

  @override
  String toString() {
    return 'BasketDataEvent.add(basketItemModel: $basketItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataAddEventImpl &&
            (identical(other.basketItemModel, basketItemModel) ||
                other.basketItemModel == basketItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basketItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataAddEventImplCopyWith<_$BasketDataAddEventImpl> get copyWith =>
      __$$BasketDataAddEventImplCopyWithImpl<_$BasketDataAddEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int meetId) initialize,
    required TResult Function(BasketItemModel basketItemModel) add,
    required TResult Function(BasketItemModel basketItemModel) delete,
    required TResult Function() dispose,
  }) {
    return add(basketItemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int meetId)? initialize,
    TResult? Function(BasketItemModel basketItemModel)? add,
    TResult? Function(BasketItemModel basketItemModel)? delete,
    TResult? Function()? dispose,
  }) {
    return add?.call(basketItemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int meetId)? initialize,
    TResult Function(BasketItemModel basketItemModel)? add,
    TResult Function(BasketItemModel basketItemModel)? delete,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(basketItemModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketDataInitializeEvent value) initialize,
    required TResult Function(BasketDataAddEvent value) add,
    required TResult Function(BasketDataDeleteEvent value) delete,
    required TResult Function(BasketDataDisposeEvent value) dispose,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketDataInitializeEvent value)? initialize,
    TResult? Function(BasketDataAddEvent value)? add,
    TResult? Function(BasketDataDeleteEvent value)? delete,
    TResult? Function(BasketDataDisposeEvent value)? dispose,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketDataInitializeEvent value)? initialize,
    TResult Function(BasketDataAddEvent value)? add,
    TResult Function(BasketDataDeleteEvent value)? delete,
    TResult Function(BasketDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class BasketDataAddEvent implements BasketDataEvent {
  const factory BasketDataAddEvent(final BasketItemModel basketItemModel) =
      _$BasketDataAddEventImpl;

  BasketItemModel get basketItemModel;
  @JsonKey(ignore: true)
  _$$BasketDataAddEventImplCopyWith<_$BasketDataAddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketDataDeleteEventImplCopyWith<$Res> {
  factory _$$BasketDataDeleteEventImplCopyWith(
          _$BasketDataDeleteEventImpl value,
          $Res Function(_$BasketDataDeleteEventImpl) then) =
      __$$BasketDataDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketItemModel basketItemModel});

  $BasketItemModelCopyWith<$Res> get basketItemModel;
}

/// @nodoc
class __$$BasketDataDeleteEventImplCopyWithImpl<$Res>
    extends _$BasketDataEventCopyWithImpl<$Res, _$BasketDataDeleteEventImpl>
    implements _$$BasketDataDeleteEventImplCopyWith<$Res> {
  __$$BasketDataDeleteEventImplCopyWithImpl(_$BasketDataDeleteEventImpl _value,
      $Res Function(_$BasketDataDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketItemModel = null,
  }) {
    return _then(_$BasketDataDeleteEventImpl(
      null == basketItemModel
          ? _value.basketItemModel
          : basketItemModel // ignore: cast_nullable_to_non_nullable
              as BasketItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketItemModelCopyWith<$Res> get basketItemModel {
    return $BasketItemModelCopyWith<$Res>(_value.basketItemModel, (value) {
      return _then(_value.copyWith(basketItemModel: value));
    });
  }
}

/// @nodoc

class _$BasketDataDeleteEventImpl implements BasketDataDeleteEvent {
  const _$BasketDataDeleteEventImpl(this.basketItemModel);

  @override
  final BasketItemModel basketItemModel;

  @override
  String toString() {
    return 'BasketDataEvent.delete(basketItemModel: $basketItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataDeleteEventImpl &&
            (identical(other.basketItemModel, basketItemModel) ||
                other.basketItemModel == basketItemModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basketItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataDeleteEventImplCopyWith<_$BasketDataDeleteEventImpl>
      get copyWith => __$$BasketDataDeleteEventImplCopyWithImpl<
          _$BasketDataDeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int meetId) initialize,
    required TResult Function(BasketItemModel basketItemModel) add,
    required TResult Function(BasketItemModel basketItemModel) delete,
    required TResult Function() dispose,
  }) {
    return delete(basketItemModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int meetId)? initialize,
    TResult? Function(BasketItemModel basketItemModel)? add,
    TResult? Function(BasketItemModel basketItemModel)? delete,
    TResult? Function()? dispose,
  }) {
    return delete?.call(basketItemModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int meetId)? initialize,
    TResult Function(BasketItemModel basketItemModel)? add,
    TResult Function(BasketItemModel basketItemModel)? delete,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(basketItemModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketDataInitializeEvent value) initialize,
    required TResult Function(BasketDataAddEvent value) add,
    required TResult Function(BasketDataDeleteEvent value) delete,
    required TResult Function(BasketDataDisposeEvent value) dispose,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketDataInitializeEvent value)? initialize,
    TResult? Function(BasketDataAddEvent value)? add,
    TResult? Function(BasketDataDeleteEvent value)? delete,
    TResult? Function(BasketDataDisposeEvent value)? dispose,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketDataInitializeEvent value)? initialize,
    TResult Function(BasketDataAddEvent value)? add,
    TResult Function(BasketDataDeleteEvent value)? delete,
    TResult Function(BasketDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class BasketDataDeleteEvent implements BasketDataEvent {
  const factory BasketDataDeleteEvent(final BasketItemModel basketItemModel) =
      _$BasketDataDeleteEventImpl;

  BasketItemModel get basketItemModel;
  @JsonKey(ignore: true)
  _$$BasketDataDeleteEventImplCopyWith<_$BasketDataDeleteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasketDataDisposeEventImplCopyWith<$Res> {
  factory _$$BasketDataDisposeEventImplCopyWith(
          _$BasketDataDisposeEventImpl value,
          $Res Function(_$BasketDataDisposeEventImpl) then) =
      __$$BasketDataDisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BasketDataDisposeEventImplCopyWithImpl<$Res>
    extends _$BasketDataEventCopyWithImpl<$Res, _$BasketDataDisposeEventImpl>
    implements _$$BasketDataDisposeEventImplCopyWith<$Res> {
  __$$BasketDataDisposeEventImplCopyWithImpl(
      _$BasketDataDisposeEventImpl _value,
      $Res Function(_$BasketDataDisposeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BasketDataDisposeEventImpl implements BasketDataDisposeEvent {
  const _$BasketDataDisposeEventImpl();

  @override
  String toString() {
    return 'BasketDataEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataDisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int meetId) initialize,
    required TResult Function(BasketItemModel basketItemModel) add,
    required TResult Function(BasketItemModel basketItemModel) delete,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int meetId)? initialize,
    TResult? Function(BasketItemModel basketItemModel)? add,
    TResult? Function(BasketItemModel basketItemModel)? delete,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int meetId)? initialize,
    TResult Function(BasketItemModel basketItemModel)? add,
    TResult Function(BasketItemModel basketItemModel)? delete,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasketDataInitializeEvent value) initialize,
    required TResult Function(BasketDataAddEvent value) add,
    required TResult Function(BasketDataDeleteEvent value) delete,
    required TResult Function(BasketDataDisposeEvent value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasketDataInitializeEvent value)? initialize,
    TResult? Function(BasketDataAddEvent value)? add,
    TResult? Function(BasketDataDeleteEvent value)? delete,
    TResult? Function(BasketDataDisposeEvent value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasketDataInitializeEvent value)? initialize,
    TResult Function(BasketDataAddEvent value)? add,
    TResult Function(BasketDataDeleteEvent value)? delete,
    TResult Function(BasketDataDisposeEvent value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class BasketDataDisposeEvent implements BasketDataEvent {
  const factory BasketDataDisposeEvent() = _$BasketDataDisposeEventImpl;
}
