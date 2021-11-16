part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState() = _ThemeState;

  factory ThemeState.themeLoadingState() = LoadingState;

  factory ThemeState.themeChangeState({required bool isDarkTheme}) =
      ChangeState;
}
