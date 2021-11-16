import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

part 'theme_event.dart';

part 'theme_bloc.freezed.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.themeLoadingState());

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    yield* event.map(
      themeInitialEvent: _themeInitialEvent,
      themeChangeEvent: _themeChangeEvent,
    );
  }

  Stream<ThemeState> _themeInitialEvent(_InitialEvent event) async* {
    final isDarkTheme = await SharedPrefs().getSharedBool(key: themeKey);
    yield _ChangeState(isDarkTheme: isDarkTheme);
  }

  Stream<ThemeState> _themeChangeEvent(_ChangeEvent event) async* {
    SharedPrefs().setSharedBool(key: themeKey, val: event.isDarkTheme);
    yield _ChangeState(isDarkTheme: event.isDarkTheme);
  }
}
