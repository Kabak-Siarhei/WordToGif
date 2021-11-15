part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ThemeInitialEvent extends ThemeEvent {}

class ThemeChangeEvent extends ThemeEvent {
  final bool isDarkTheme;

  ThemeChangeEvent(this.isDarkTheme);
}