import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

part 'theme_event.dart';

part 'theme_bloc.freezed.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(LoadingState());

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    yield* event.map(
      themeInitialEvent: _themeInitialEvent,
      themeChangeEvent: _themeChangeEvent,
    );
  }

  Stream<ThemeState> _themeInitialEvent(InitialEvent event) async* {
    final isDarkTheme = await SharedPrefs().getSharedBool(key: stateKey);
    yield ChangeState(isDarkTheme: isDarkTheme);
  }

  Stream<ThemeState> _themeChangeEvent(ChangeEvent event) async* {
    SharedPrefs().setSharedBool(key: stateKey, val: event.isDarkTheme);
    yield ChangeState(isDarkTheme: event.isDarkTheme);
  }
}
