import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeloadState());

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeChangeEvent) {
      SharedPrefs().setSharedBool(key: stateKey, val: event.isDarkTheme);
      yield ThemeChangeState(event.isDarkTheme);
    } else if (event is ThemeInitialEvent) {
      final isDarkTheme = await SharedPrefs().getSharedBool(key: stateKey);
      yield ThemeChangeState(isDarkTheme);
    }
  }
}
