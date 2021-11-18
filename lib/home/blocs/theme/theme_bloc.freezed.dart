// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  _InitialEvent initialEvent() {
    return _InitialEvent();
  }

  _ChangeEvent changeEvent({required bool isDarkTheme}) {
    return _ChangeEvent(
      isDarkTheme: isDarkTheme,
    );
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(bool isDarkTheme) changeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(bool isDarkTheme)? changeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(bool isDarkTheme)? changeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_ChangeEvent value) changeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_ChangeEvent value)? changeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_ChangeEvent value)? changeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class _$InitialEventCopyWith<$Res> {
  factory _$InitialEventCopyWith(
          _InitialEvent value, $Res Function(_InitialEvent) then) =
      __$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEventCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$InitialEventCopyWith<$Res> {
  __$InitialEventCopyWithImpl(
      _InitialEvent _value, $Res Function(_InitialEvent) _then)
      : super(_value, (v) => _then(v as _InitialEvent));

  @override
  _InitialEvent get _value => super._value as _InitialEvent;
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  _$_InitialEvent();

  @override
  String toString() {
    return 'ThemeEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(bool isDarkTheme) changeEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(bool isDarkTheme)? changeEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(bool isDarkTheme)? changeEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_ChangeEvent value) changeEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_ChangeEvent value)? changeEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_ChangeEvent value)? changeEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements ThemeEvent {
  factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$ChangeEventCopyWith<$Res> {
  factory _$ChangeEventCopyWith(
          _ChangeEvent value, $Res Function(_ChangeEvent) then) =
      __$ChangeEventCopyWithImpl<$Res>;
  $Res call({bool isDarkTheme});
}

/// @nodoc
class __$ChangeEventCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$ChangeEventCopyWith<$Res> {
  __$ChangeEventCopyWithImpl(
      _ChangeEvent _value, $Res Function(_ChangeEvent) _then)
      : super(_value, (v) => _then(v as _ChangeEvent));

  @override
  _ChangeEvent get _value => super._value as _ChangeEvent;

  @override
  $Res call({
    Object? isDarkTheme = freezed,
  }) {
    return _then(_ChangeEvent(
      isDarkTheme: isDarkTheme == freezed
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeEvent implements _ChangeEvent {
  _$_ChangeEvent({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'ThemeEvent.changeEvent(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeEvent &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  _$ChangeEventCopyWith<_ChangeEvent> get copyWith =>
      __$ChangeEventCopyWithImpl<_ChangeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(bool isDarkTheme) changeEvent,
  }) {
    return changeEvent(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(bool isDarkTheme)? changeEvent,
  }) {
    return changeEvent?.call(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(bool isDarkTheme)? changeEvent,
    required TResult orElse(),
  }) {
    if (changeEvent != null) {
      return changeEvent(isDarkTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_ChangeEvent value) changeEvent,
  }) {
    return changeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_ChangeEvent value)? changeEvent,
  }) {
    return changeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_ChangeEvent value)? changeEvent,
    required TResult orElse(),
  }) {
    if (changeEvent != null) {
      return changeEvent(this);
    }
    return orElse();
  }
}

abstract class _ChangeEvent implements ThemeEvent {
  factory _ChangeEvent({required bool isDarkTheme}) = _$_ChangeEvent;

  bool get isDarkTheme;
  @JsonKey(ignore: true)
  _$ChangeEventCopyWith<_ChangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _LoadingState loadingState() {
    return _LoadingState();
  }

  _ChangeState changeState({required bool isDarkTheme}) {
    return _ChangeState(
      isDarkTheme: isDarkTheme,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(bool isDarkTheme) changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(bool isDarkTheme)? changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(bool isDarkTheme)? changeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ChangeState value) changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ChangeState value)? changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ChangeState value)? changeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  _$_LoadingState();

  @override
  String toString() {
    return 'ThemeState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(bool isDarkTheme) changeState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(bool isDarkTheme)? changeState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(bool isDarkTheme)? changeState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ChangeState value) changeState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ChangeState value)? changeState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ChangeState value)? changeState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ThemeState {
  factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$ChangeStateCopyWith<$Res> {
  factory _$ChangeStateCopyWith(
          _ChangeState value, $Res Function(_ChangeState) then) =
      __$ChangeStateCopyWithImpl<$Res>;
  $Res call({bool isDarkTheme});
}

/// @nodoc
class __$ChangeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ChangeStateCopyWith<$Res> {
  __$ChangeStateCopyWithImpl(
      _ChangeState _value, $Res Function(_ChangeState) _then)
      : super(_value, (v) => _then(v as _ChangeState));

  @override
  _ChangeState get _value => super._value as _ChangeState;

  @override
  $Res call({
    Object? isDarkTheme = freezed,
  }) {
    return _then(_ChangeState(
      isDarkTheme: isDarkTheme == freezed
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeState implements _ChangeState {
  _$_ChangeState({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'ThemeState.changeState(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeState &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  _$ChangeStateCopyWith<_ChangeState> get copyWith =>
      __$ChangeStateCopyWithImpl<_ChangeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(bool isDarkTheme) changeState,
  }) {
    return changeState(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(bool isDarkTheme)? changeState,
  }) {
    return changeState?.call(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(bool isDarkTheme)? changeState,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(isDarkTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ChangeState value) changeState,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ChangeState value)? changeState,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ChangeState value)? changeState,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeState implements ThemeState {
  factory _ChangeState({required bool isDarkTheme}) = _$_ChangeState;

  bool get isDarkTheme;
  @JsonKey(ignore: true)
  _$ChangeStateCopyWith<_ChangeState> get copyWith =>
      throw _privateConstructorUsedError;
}
