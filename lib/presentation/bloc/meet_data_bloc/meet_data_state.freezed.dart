// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeetDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<MeetEntity> allMeetData) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<MeetEntity> allMeetData)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<MeetEntity> allMeetData)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeetDataInit value) init,
    required TResult Function(_MeetDataLoaded value) loaded,
    required TResult Function(_MeetDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeetDataInit value)? init,
    TResult? Function(_MeetDataLoaded value)? loaded,
    TResult? Function(_MeetDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeetDataInit value)? init,
    TResult Function(_MeetDataLoaded value)? loaded,
    TResult Function(_MeetDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetDataStateCopyWith<$Res> {
  factory $MeetDataStateCopyWith(
          MeetDataState value, $Res Function(MeetDataState) then) =
      _$MeetDataStateCopyWithImpl<$Res, MeetDataState>;
}

/// @nodoc
class _$MeetDataStateCopyWithImpl<$Res, $Val extends MeetDataState>
    implements $MeetDataStateCopyWith<$Res> {
  _$MeetDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MeetDataInitImplCopyWith<$Res> {
  factory _$$MeetDataInitImplCopyWith(
          _$MeetDataInitImpl value, $Res Function(_$MeetDataInitImpl) then) =
      __$$MeetDataInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeetDataInitImplCopyWithImpl<$Res>
    extends _$MeetDataStateCopyWithImpl<$Res, _$MeetDataInitImpl>
    implements _$$MeetDataInitImplCopyWith<$Res> {
  __$$MeetDataInitImplCopyWithImpl(
      _$MeetDataInitImpl _value, $Res Function(_$MeetDataInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MeetDataInitImpl implements _MeetDataInit {
  const _$MeetDataInitImpl();

  @override
  String toString() {
    return 'MeetDataState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MeetDataInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<MeetEntity> allMeetData) loaded,
    required TResult Function(String error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<MeetEntity> allMeetData)? loaded,
    TResult? Function(String error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<MeetEntity> allMeetData)? loaded,
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
    required TResult Function(_MeetDataInit value) init,
    required TResult Function(_MeetDataLoaded value) loaded,
    required TResult Function(_MeetDataError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeetDataInit value)? init,
    TResult? Function(_MeetDataLoaded value)? loaded,
    TResult? Function(_MeetDataError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeetDataInit value)? init,
    TResult Function(_MeetDataLoaded value)? loaded,
    TResult Function(_MeetDataError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _MeetDataInit implements MeetDataState {
  const factory _MeetDataInit() = _$MeetDataInitImpl;
}

/// @nodoc
abstract class _$$MeetDataLoadedImplCopyWith<$Res> {
  factory _$$MeetDataLoadedImplCopyWith(_$MeetDataLoadedImpl value,
          $Res Function(_$MeetDataLoadedImpl) then) =
      __$$MeetDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MeetEntity> allMeetData});
}

/// @nodoc
class __$$MeetDataLoadedImplCopyWithImpl<$Res>
    extends _$MeetDataStateCopyWithImpl<$Res, _$MeetDataLoadedImpl>
    implements _$$MeetDataLoadedImplCopyWith<$Res> {
  __$$MeetDataLoadedImplCopyWithImpl(
      _$MeetDataLoadedImpl _value, $Res Function(_$MeetDataLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMeetData = null,
  }) {
    return _then(_$MeetDataLoadedImpl(
      allMeetData: null == allMeetData
          ? _value._allMeetData
          : allMeetData // ignore: cast_nullable_to_non_nullable
              as List<MeetEntity>,
    ));
  }
}

/// @nodoc

class _$MeetDataLoadedImpl implements _MeetDataLoaded {
  const _$MeetDataLoadedImpl({required final List<MeetEntity> allMeetData})
      : _allMeetData = allMeetData;

  final List<MeetEntity> _allMeetData;
  @override
  List<MeetEntity> get allMeetData {
    if (_allMeetData is EqualUnmodifiableListView) return _allMeetData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMeetData);
  }

  @override
  String toString() {
    return 'MeetDataState.loaded(allMeetData: $allMeetData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allMeetData, _allMeetData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allMeetData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataLoadedImplCopyWith<_$MeetDataLoadedImpl> get copyWith =>
      __$$MeetDataLoadedImplCopyWithImpl<_$MeetDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<MeetEntity> allMeetData) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(allMeetData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<MeetEntity> allMeetData)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(allMeetData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<MeetEntity> allMeetData)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allMeetData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeetDataInit value) init,
    required TResult Function(_MeetDataLoaded value) loaded,
    required TResult Function(_MeetDataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeetDataInit value)? init,
    TResult? Function(_MeetDataLoaded value)? loaded,
    TResult? Function(_MeetDataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeetDataInit value)? init,
    TResult Function(_MeetDataLoaded value)? loaded,
    TResult Function(_MeetDataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MeetDataLoaded implements MeetDataState {
  const factory _MeetDataLoaded({required final List<MeetEntity> allMeetData}) =
      _$MeetDataLoadedImpl;

  List<MeetEntity> get allMeetData;
  @JsonKey(ignore: true)
  _$$MeetDataLoadedImplCopyWith<_$MeetDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeetDataErrorImplCopyWith<$Res> {
  factory _$$MeetDataErrorImplCopyWith(
          _$MeetDataErrorImpl value, $Res Function(_$MeetDataErrorImpl) then) =
      __$$MeetDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MeetDataErrorImplCopyWithImpl<$Res>
    extends _$MeetDataStateCopyWithImpl<$Res, _$MeetDataErrorImpl>
    implements _$$MeetDataErrorImplCopyWith<$Res> {
  __$$MeetDataErrorImplCopyWithImpl(
      _$MeetDataErrorImpl _value, $Res Function(_$MeetDataErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MeetDataErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetDataErrorImpl implements _MeetDataError {
  const _$MeetDataErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MeetDataState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetDataErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetDataErrorImplCopyWith<_$MeetDataErrorImpl> get copyWith =>
      __$$MeetDataErrorImplCopyWithImpl<_$MeetDataErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<MeetEntity> allMeetData) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<MeetEntity> allMeetData)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<MeetEntity> allMeetData)? loaded,
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
    required TResult Function(_MeetDataInit value) init,
    required TResult Function(_MeetDataLoaded value) loaded,
    required TResult Function(_MeetDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeetDataInit value)? init,
    TResult? Function(_MeetDataLoaded value)? loaded,
    TResult? Function(_MeetDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeetDataInit value)? init,
    TResult Function(_MeetDataLoaded value)? loaded,
    TResult Function(_MeetDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MeetDataError implements MeetDataState {
  const factory _MeetDataError({required final String error}) =
      _$MeetDataErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$MeetDataErrorImplCopyWith<_$MeetDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
