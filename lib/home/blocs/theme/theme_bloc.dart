import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeInitialState state) : super(state);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeChangeEvent) {
      yield ThemeChangeState(event.isDarkTheme);
    } else if (event is ThemeInitialEvent) {

      final isDarkTheme = SharedPrefs().getBoolStateTheme;
      yield ThemeInitialState(isDarkTheme);
    }
  }
}
