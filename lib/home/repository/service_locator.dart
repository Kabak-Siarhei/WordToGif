import 'package:get_it/get_it.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

final getIt = GetIt.I;

void setup() {
  getIt.registerLazySingleton<SharedPrefs>(() => SharedPrefs());
  getIt.registerFactory<ThemeBloc>(() => ThemeBloc());
  
}