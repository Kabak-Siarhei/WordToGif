import 'package:get_it/get_it.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';

final sl = GetIt.I;

void setup() {
  sl.registerLazySingleton<SharedPrefs>(() => SharedPrefs());
}
