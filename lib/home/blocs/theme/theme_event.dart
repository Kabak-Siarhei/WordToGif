part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  factory ThemeEvent.initialEvent() = _InitialEvent;

  factory ThemeEvent.changeEvent({required bool isDarkTheme}) =
      _ChangeEvent;
}
