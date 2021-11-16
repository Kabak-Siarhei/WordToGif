part of 'theme_bloc.dart';


@freezed
class ThemeState with _$ThemeState {
  factory ThemeState.themeLoadingState() = _LoadingState;

  factory ThemeState.themeChangeState({required bool isDarkTheme}) =
      _ChangeState;
}
