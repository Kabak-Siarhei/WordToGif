import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeChangeEvent, ThemeChangeState> {
  ThemeBloc() : super(ThemeChangeState(false));

  @override
  Stream<ThemeChangeState> mapEventToState(ThemeChangeEvent event) async* {
    if(event is ThemeChangeEvent){
      yield ThemeChangeState(event.isDarkTheme);
    }
  }
}
