import 'package:get_it/get_it.dart';
import 'package:word_to_gif/home/api/service/get_api_word_service.dart';
import 'package:word_to_gif/home/api/shared_preferences.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';

final getIt = GetIt.I;

void setup() {
  getIt.registerLazySingleton<SharedPrefs>(() => SharedPrefs());

  getIt.registerFactory<ThemeBloc>(() => ThemeBloc(getIt.get<SharedPrefs>()));

  getIt.registerSingleton<GetApiWordService>(GetApiWordService.create());
}
