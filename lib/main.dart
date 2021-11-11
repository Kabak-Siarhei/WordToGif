import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:word_to_gif/home/repository/shared_preferences.dart';
import 'l10n/all_locales.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs().loadingInitState();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = SharedPrefs().getBoolStateTheme;

    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(ThemeInitialState(isDarkTheme)),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {

        if (state is ThemeChangeState) {
          isDarkTheme = state.isDarkTheme;
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: AllLocales.all,
          theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        );
      }),
    );
  }
}
