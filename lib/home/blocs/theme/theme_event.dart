part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
    const factory ThemeEvent() = _ThemeEvent;

    factory ThemeEvent.themeInitialEvent() = InitialEvent;

    factory ThemeEvent.themeChangeEvent({required bool isDarkTheme}) = ChangeEvent;
}


