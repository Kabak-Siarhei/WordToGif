part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState.loadingState() = _LoadingState;

  factory ThemeState.changeState({required bool isDarkTheme}) =
      _ChangeState;
}
