import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

part 'theme_event.dart';

part 'theme_bloc.freezed.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.loadingState());

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    yield* event.map(
      initialEvent: _initialEvent,
      changeEvent: _changeEvent,
    );
  }

  Stream<ThemeState> _initialEvent(_InitialEvent event) async* {
    final isDarkTheme = await SharedPrefs().getSharedBool(key: themeKey);
    yield ThemeState.changeState(isDarkTheme: isDarkTheme);
  }

  Stream<ThemeState> _changeEvent(_ChangeEvent event) async* {
    SharedPrefs().setSharedBool(key: themeKey, val: event.isDarkTheme);
    yield ThemeState.changeState(isDarkTheme: event.isDarkTheme);
  }
}
