part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ThemeChangeEvent extends ThemeEvent {
  final bool isDarkTheme;

  ThemeChangeEvent(this.isDarkTheme);
}