import 'package:get_it/get_it.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

final sl = GetIt.I;

void setup() {
  sl.registerLazySingleton<SharedPrefs>(() => SharedPrefs());
  sl.registerFactory<ThemeBloc>(() => ThemeBloc());
  
}
