// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function() dispose,
    required TResult Function(UserFieldsEnum userEnum, String fieldValue)
        updateUserField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function()? dispose,
    TResult? Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function()? dispose,
    TResult Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataInitializeEvent value) initialize,
    required TResult Function(UserDataDisposeEvent value) dispose,
    required TResult Function(UserDataUpdateField value) updateUserField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataInitializeEvent value)? initialize,
    TResult? Function(UserDataDisposeEvent value)? dispose,
    TResult? Function(UserDataUpdateField value)? updateUserField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataInitializeEvent value)? initialize,
    TResult Function(UserDataDisposeEvent value)? dispose,
    TResult Function(UserDataUpdateField value)? updateUserField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res, UserDataEvent>;
}

/// @nodoc
class _$UserDataEventCopyWithImpl<$Res, $Val extends UserDataEvent>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserDataInitializeEventImplCopyWith<$Res> {
  factory _$$UserDataInitializeEventImplCopyWith(
          _$UserDataInitializeEventImpl value,
          $Res Function(_$UserDataInitializeEventImpl) then) =
      __$$UserDataInitializeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserDataInitializeEventImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$UserDataInitializeEventImpl>
    implements _$$UserDataInitializeEventImplCopyWith<$Res> {
  __$$UserDataInitializeEventImplCopyWithImpl(
      _$UserDataInitializeEventImpl _value,
      $Res Function(_$UserDataInitializeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserDataInitializeEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDataInitializeEventImpl implements UserDataInitializeEvent {
  const _$UserDataInitializeEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserDataEvent.initialize(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataInitializeEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataInitializeEventImplCopyWith<_$UserDataInitializeEventImpl>
      get copyWith => __$$UserDataInitializeEventImplCopyWithImpl<
          _$UserDataInitializeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function() dispose,
    required TResult Function(UserFieldsEnum userEnum, String fieldValue)
        updateUserField,
  }) {
    return initialize(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function()? dispose,
    TResult? Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
  }) {
    return initialize?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function()? dispose,
    TResult Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataInitializeEvent value) initialize,
    required TResult Function(UserDataDisposeEvent value) dispose,
    required TResult Function(UserDataUpdateField value) updateUserField,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataInitializeEvent value)? initialize,
    TResult? Function(UserDataDisposeEvent value)? dispose,
    TResult? Function(UserDataUpdateField value)? updateUserField,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataInitializeEvent value)? initialize,
    TResult Function(UserDataDisposeEvent value)? dispose,
    TResult Function(UserDataUpdateField value)? updateUserField,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class UserDataInitializeEvent implements UserDataEvent {
  const factory UserDataInitializeEvent(final String userId) =
      _$UserDataInitializeEventImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$UserDataInitializeEventImplCopyWith<_$UserDataInitializeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataDisposeEventImplCopyWith<$Res> {
  factory _$$UserDataDisposeEventImplCopyWith(_$UserDataDisposeEventImpl value,
          $Res Function(_$UserDataDisposeEventImpl) then) =
      __$$UserDataDisposeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataDisposeEventImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$UserDataDisposeEventImpl>
    implements _$$UserDataDisposeEventImplCopyWith<$Res> {
  __$$UserDataDisposeEventImplCopyWithImpl(_$UserDataDisposeEventImpl _value,
      $Res Function(_$UserDataDisposeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataDisposeEventImpl implements UserDataDisposeEvent {
  const _$UserDataDisposeEventImpl();

  @override
  String toString() {
    return 'UserDataEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataDisposeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function() dispose,
    required TResult Function(UserFieldsEnum userEnum, String fieldValue)
        updateUserField,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function()? dispose,
    TResult? Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function()? dispose,
    TResult Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
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
    required TResult Function(UserDataInitializeEvent value) initialize,
    required TResult Function(UserDataDisposeEvent value) dispose,
    required TResult Function(UserDataUpdateField value) updateUserField,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataInitializeEvent value)? initialize,
    TResult? Function(UserDataDisposeEvent value)? dispose,
    TResult? Function(UserDataUpdateField value)? updateUserField,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataInitializeEvent value)? initialize,
    TResult Function(UserDataDisposeEvent value)? dispose,
    TResult Function(UserDataUpdateField value)? updateUserField,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class UserDataDisposeEvent implements UserDataEvent {
  const factory UserDataDisposeEvent() = _$UserDataDisposeEventImpl;
}

/// @nodoc
abstract class _$$UserDataUpdateFieldImplCopyWith<$Res> {
  factory _$$UserDataUpdateFieldImplCopyWith(_$UserDataUpdateFieldImpl value,
          $Res Function(_$UserDataUpdateFieldImpl) then) =
      __$$UserDataUpdateFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFieldsEnum userEnum, String fieldValue});
}

/// @nodoc
class __$$UserDataUpdateFieldImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$UserDataUpdateFieldImpl>
    implements _$$UserDataUpdateFieldImplCopyWith<$Res> {
  __$$UserDataUpdateFieldImplCopyWithImpl(_$UserDataUpdateFieldImpl _value,
      $Res Function(_$UserDataUpdateFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEnum = null,
    Object? fieldValue = null,
  }) {
    return _then(_$UserDataUpdateFieldImpl(
      null == userEnum
          ? _value.userEnum
          : userEnum // ignore: cast_nullable_to_non_nullable
              as UserFieldsEnum,
      null == fieldValue
          ? _value.fieldValue
          : fieldValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDataUpdateFieldImpl implements UserDataUpdateField {
  const _$UserDataUpdateFieldImpl(this.userEnum, this.fieldValue);

  @override
  final UserFieldsEnum userEnum;
  @override
  final String fieldValue;

  @override
  String toString() {
    return 'UserDataEvent.updateUserField(userEnum: $userEnum, fieldValue: $fieldValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataUpdateFieldImpl &&
            (identical(other.userEnum, userEnum) ||
                other.userEnum == userEnum) &&
            (identical(other.fieldValue, fieldValue) ||
                other.fieldValue == fieldValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEnum, fieldValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataUpdateFieldImplCopyWith<_$UserDataUpdateFieldImpl> get copyWith =>
      __$$UserDataUpdateFieldImplCopyWithImpl<_$UserDataUpdateFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initialize,
    required TResult Function() dispose,
    required TResult Function(UserFieldsEnum userEnum, String fieldValue)
        updateUserField,
  }) {
    return updateUserField(userEnum, fieldValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? initialize,
    TResult? Function()? dispose,
    TResult? Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
  }) {
    return updateUserField?.call(userEnum, fieldValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initialize,
    TResult Function()? dispose,
    TResult Function(UserFieldsEnum userEnum, String fieldValue)?
        updateUserField,
    required TResult orElse(),
  }) {
    if (updateUserField != null) {
      return updateUserField(userEnum, fieldValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDataInitializeEvent value) initialize,
    required TResult Function(UserDataDisposeEvent value) dispose,
    required TResult Function(UserDataUpdateField value) updateUserField,
  }) {
    return updateUserField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserDataInitializeEvent value)? initialize,
    TResult? Function(UserDataDisposeEvent value)? dispose,
    TResult? Function(UserDataUpdateField value)? updateUserField,
  }) {
    return updateUserField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDataInitializeEvent value)? initialize,
    TResult Function(UserDataDisposeEvent value)? dispose,
    TResult Function(UserDataUpdateField value)? updateUserField,
    required TResult orElse(),
  }) {
    if (updateUserField != null) {
      return updateUserField(this);
    }
    return orElse();
  }
}

abstract class UserDataUpdateField implements UserDataEvent {
  const factory UserDataUpdateField(
          final UserFieldsEnum userEnum, final String fieldValue) =
      _$UserDataUpdateFieldImpl;

  UserFieldsEnum get userEnum;
  String get fieldValue;
  @JsonKey(ignore: true)
  _$$UserDataUpdateFieldImplCopyWith<_$UserDataUpdateFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
