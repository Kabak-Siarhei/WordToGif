import 'package:bloc/bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(false)) {
    on<ThemeEvent>((event, emit) {
      emit(ThemeState(event.value));
    });
  }
}
