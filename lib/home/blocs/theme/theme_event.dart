part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  factory ThemeEvent.themeInitialEvent() = _InitialEvent;

  factory ThemeEvent.themeChangeEvent({required bool isDarkTheme}) =
      _ChangeEvent;
}
