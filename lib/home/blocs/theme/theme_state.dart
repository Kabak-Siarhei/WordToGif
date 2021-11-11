part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeInitialState extends ThemeState {
  final bool isDarkTheme;

  ThemeInitialState(this.isDarkTheme);
}

class ThemeChangeState extends ThemeState {
  final bool isDarkTheme;

  ThemeChangeState(this.isDarkTheme);
}
