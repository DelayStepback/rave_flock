// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel currentUser)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataInit value) init,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataInit value)? init,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataInit value)? init,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserDataInitImplCopyWith<$Res> {
  factory _$$UserDataInitImplCopyWith(
          _$UserDataInitImpl value, $Res Function(_$UserDataInitImpl) then) =
      __$$UserDataInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDataInitImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataInitImpl>
    implements _$$UserDataInitImplCopyWith<$Res> {
  __$$UserDataInitImplCopyWithImpl(
      _$UserDataInitImpl _value, $Res Function(_$UserDataInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDataInitImpl implements _UserDataInit {
  const _$UserDataInitImpl();

  @override
  String toString() {
    return 'UserDataState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDataInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel currentUser)? loaded,
    TResult? Function(String error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel currentUser)? loaded,
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
    required TResult Function(_UserDataInit value) init,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataInit value)? init,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataInit value)? init,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _UserDataInit implements UserDataState {
  const factory _UserDataInit() = _$UserDataInitImpl;
}

/// @nodoc
abstract class _$$UserDataLoadedImplCopyWith<$Res> {
  factory _$$UserDataLoadedImplCopyWith(_$UserDataLoadedImpl value,
          $Res Function(_$UserDataLoadedImpl) then) =
      __$$UserDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel currentUser});

  $UserModelCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$UserDataLoadedImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataLoadedImpl>
    implements _$$UserDataLoadedImplCopyWith<$Res> {
  __$$UserDataLoadedImplCopyWithImpl(
      _$UserDataLoadedImpl _value, $Res Function(_$UserDataLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
  }) {
    return _then(_$UserDataLoadedImpl(
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get currentUser {
    return $UserModelCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$UserDataLoadedImpl implements _UserDataLoaded {
  const _$UserDataLoadedImpl({required this.currentUser});

  @override
  final UserModel currentUser;

  @override
  String toString() {
    return 'UserDataState.loaded(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataLoadedImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataLoadedImplCopyWith<_$UserDataLoadedImpl> get copyWith =>
      __$$UserDataLoadedImplCopyWithImpl<_$UserDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel currentUser)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel currentUser)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataInit value) init,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataInit value)? init,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataInit value)? init,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserDataLoaded implements UserDataState {
  const factory _UserDataLoaded({required final UserModel currentUser}) =
      _$UserDataLoadedImpl;

  UserModel get currentUser;
  @JsonKey(ignore: true)
  _$$UserDataLoadedImplCopyWith<_$UserDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDataErrorImplCopyWith<$Res> {
  factory _$$UserDataErrorImplCopyWith(
          _$UserDataErrorImpl value, $Res Function(_$UserDataErrorImpl) then) =
      __$$UserDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UserDataErrorImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataErrorImpl>
    implements _$$UserDataErrorImplCopyWith<$Res> {
  __$$UserDataErrorImplCopyWithImpl(
      _$UserDataErrorImpl _value, $Res Function(_$UserDataErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserDataErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDataErrorImpl implements _UserDataError {
  const _$UserDataErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserDataState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataErrorImplCopyWith<_$UserDataErrorImpl> get copyWith =>
      __$$UserDataErrorImplCopyWithImpl<_$UserDataErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel currentUser) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel currentUser)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel currentUser)? loaded,
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
    required TResult Function(_UserDataInit value) init,
    required TResult Function(_UserDataLoaded value) loaded,
    required TResult Function(_UserDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataInit value)? init,
    TResult? Function(_UserDataLoaded value)? loaded,
    TResult? Function(_UserDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataInit value)? init,
    TResult Function(_UserDataLoaded value)? loaded,
    TResult Function(_UserDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserDataError implements UserDataState {
  const factory _UserDataError({required final String error}) =
      _$UserDataErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$UserDataErrorImplCopyWith<_$UserDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
