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

  InitialEvent themeInitialEvent() {
    return InitialEvent();
  }

  ChangeEvent themeChangeEvent({required bool isDarkTheme}) {
    return ChangeEvent(
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
    required TResult Function() themeInitialEvent,
    required TResult Function(bool isDarkTheme) themeChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeInitialEvent,
    TResult Function(bool isDarkTheme)? themeChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeInitialEvent,
    TResult Function(bool isDarkTheme)? themeChangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) themeInitialEvent,
    required TResult Function(ChangeEvent value) themeChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEvent value)? themeInitialEvent,
    TResult Function(ChangeEvent value)? themeChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? themeInitialEvent,
    TResult Function(ChangeEvent value)? themeChangeEvent,
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
abstract class $InitialEventCopyWith<$Res> {
  factory $InitialEventCopyWith(
          InitialEvent value, $Res Function(InitialEvent) then) =
      _$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEventCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements $InitialEventCopyWith<$Res> {
  _$InitialEventCopyWithImpl(
      InitialEvent _value, $Res Function(InitialEvent) _then)
      : super(_value, (v) => _then(v as InitialEvent));

  @override
  InitialEvent get _value => super._value as InitialEvent;
}

/// @nodoc

class _$InitialEvent implements InitialEvent {
  _$InitialEvent();

  @override
  String toString() {
    return 'ThemeEvent.themeInitialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeInitialEvent,
    required TResult Function(bool isDarkTheme) themeChangeEvent,
  }) {
    return themeInitialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeInitialEvent,
    TResult Function(bool isDarkTheme)? themeChangeEvent,
  }) {
    return themeInitialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeInitialEvent,
    TResult Function(bool isDarkTheme)? themeChangeEvent,
    required TResult orElse(),
  }) {
    if (themeInitialEvent != null) {
      return themeInitialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) themeInitialEvent,
    required TResult Function(ChangeEvent value) themeChangeEvent,
  }) {
    return themeInitialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEvent value)? themeInitialEvent,
    TResult Function(ChangeEvent value)? themeChangeEvent,
  }) {
    return themeInitialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? themeInitialEvent,
    TResult Function(ChangeEvent value)? themeChangeEvent,
    required TResult orElse(),
  }) {
    if (themeInitialEvent != null) {
      return themeInitialEvent(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements ThemeEvent {
  factory InitialEvent() = _$InitialEvent;
}

/// @nodoc
abstract class $ChangeEventCopyWith<$Res> {
  factory $ChangeEventCopyWith(
          ChangeEvent value, $Res Function(ChangeEvent) then) =
      _$ChangeEventCopyWithImpl<$Res>;
  $Res call({bool isDarkTheme});
}

/// @nodoc
class _$ChangeEventCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements $ChangeEventCopyWith<$Res> {
  _$ChangeEventCopyWithImpl(
      ChangeEvent _value, $Res Function(ChangeEvent) _then)
      : super(_value, (v) => _then(v as ChangeEvent));

  @override
  ChangeEvent get _value => super._value as ChangeEvent;

  @override
  $Res call({
    Object? isDarkTheme = freezed,
  }) {
    return _then(ChangeEvent(
      isDarkTheme: isDarkTheme == freezed
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeEvent implements ChangeEvent {
  _$ChangeEvent({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'ThemeEvent.themeChangeEvent(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeEvent &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  $ChangeEventCopyWith<ChangeEvent> get copyWith =>
      _$ChangeEventCopyWithImpl<ChangeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeInitialEvent,
    required TResult Function(bool isDarkTheme) themeChangeEvent,
  }) {
    return themeChangeEvent(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeInitialEvent,
    TResult Function(bool isDarkTheme)? themeChangeEvent,
  }) {
    return themeChangeEvent?.call(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeInitialEvent,
    TResult Function(bool isDarkTheme)? themeChangeEvent,
    required TResult orElse(),
  }) {
    if (themeChangeEvent != null) {
      return themeChangeEvent(isDarkTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) themeInitialEvent,
    required TResult Function(ChangeEvent value) themeChangeEvent,
  }) {
    return themeChangeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialEvent value)? themeInitialEvent,
    TResult Function(ChangeEvent value)? themeChangeEvent,
  }) {
    return themeChangeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? themeInitialEvent,
    TResult Function(ChangeEvent value)? themeChangeEvent,
    required TResult orElse(),
  }) {
    if (themeChangeEvent != null) {
      return themeChangeEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeEvent implements ThemeEvent {
  factory ChangeEvent({required bool isDarkTheme}) = _$ChangeEvent;

  bool get isDarkTheme;
  @JsonKey(ignore: true)
  $ChangeEventCopyWith<ChangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  LoadingState themeLoadingState() {
    return LoadingState();
  }

  ChangeState themeChangeState({required bool isDarkTheme}) {
    return ChangeState(
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
    required TResult Function() themeLoadingState,
    required TResult Function(bool isDarkTheme) themeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadingState,
    TResult Function(bool isDarkTheme)? themeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadingState,
    TResult Function(bool isDarkTheme)? themeChangeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) themeLoadingState,
    required TResult Function(ChangeState value) themeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? themeLoadingState,
    TResult Function(ChangeState value)? themeChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? themeLoadingState,
    TResult Function(ChangeState value)? themeChangeState,
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
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  _$LoadingState();

  @override
  String toString() {
    return 'ThemeState.themeLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeLoadingState,
    required TResult Function(bool isDarkTheme) themeChangeState,
  }) {
    return themeLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadingState,
    TResult Function(bool isDarkTheme)? themeChangeState,
  }) {
    return themeLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadingState,
    TResult Function(bool isDarkTheme)? themeChangeState,
    required TResult orElse(),
  }) {
    if (themeLoadingState != null) {
      return themeLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) themeLoadingState,
    required TResult Function(ChangeState value) themeChangeState,
  }) {
    return themeLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? themeLoadingState,
    TResult Function(ChangeState value)? themeChangeState,
  }) {
    return themeLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? themeLoadingState,
    TResult Function(ChangeState value)? themeChangeState,
    required TResult orElse(),
  }) {
    if (themeLoadingState != null) {
      return themeLoadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ThemeState {
  factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class $ChangeStateCopyWith<$Res> {
  factory $ChangeStateCopyWith(
          ChangeState value, $Res Function(ChangeState) then) =
      _$ChangeStateCopyWithImpl<$Res>;
  $Res call({bool isDarkTheme});
}

/// @nodoc
class _$ChangeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements $ChangeStateCopyWith<$Res> {
  _$ChangeStateCopyWithImpl(
      ChangeState _value, $Res Function(ChangeState) _then)
      : super(_value, (v) => _then(v as ChangeState));

  @override
  ChangeState get _value => super._value as ChangeState;

  @override
  $Res call({
    Object? isDarkTheme = freezed,
  }) {
    return _then(ChangeState(
      isDarkTheme: isDarkTheme == freezed
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeState implements ChangeState {
  _$ChangeState({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'ThemeState.themeChangeState(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeState &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  $ChangeStateCopyWith<ChangeState> get copyWith =>
      _$ChangeStateCopyWithImpl<ChangeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeLoadingState,
    required TResult Function(bool isDarkTheme) themeChangeState,
  }) {
    return themeChangeState(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadingState,
    TResult Function(bool isDarkTheme)? themeChangeState,
  }) {
    return themeChangeState?.call(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadingState,
    TResult Function(bool isDarkTheme)? themeChangeState,
    required TResult orElse(),
  }) {
    if (themeChangeState != null) {
      return themeChangeState(isDarkTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) themeLoadingState,
    required TResult Function(ChangeState value) themeChangeState,
  }) {
    return themeChangeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? themeLoadingState,
    TResult Function(ChangeState value)? themeChangeState,
  }) {
    return themeChangeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? themeLoadingState,
    TResult Function(ChangeState value)? themeChangeState,
    required TResult orElse(),
  }) {
    if (themeChangeState != null) {
      return themeChangeState(this);
    }
    return orElse();
  }
}

abstract class ChangeState implements ThemeState {
  factory ChangeState({required bool isDarkTheme}) = _$ChangeState;

  bool get isDarkTheme;
  @JsonKey(ignore: true)
  $ChangeStateCopyWith<ChangeState> get copyWith =>
      throw _privateConstructorUsedError;
}
