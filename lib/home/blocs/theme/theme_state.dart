part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeloadState extends ThemeState {}

class ThemeChangeState extends ThemeState {
  final bool isDarkTheme;

  ThemeChangeState(this.isDarkTheme);
}
