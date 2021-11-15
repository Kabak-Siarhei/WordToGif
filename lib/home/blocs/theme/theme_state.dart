part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeLoadState extends ThemeState {}

class ThemeChangeState extends ThemeState {
  final bool isDarkTheme;

  ThemeChangeState(this.isDarkTheme);
}
