import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/home.dart';
import 'package:word_to_gif/home/ui_kit/loading_page.dart';
import 'l10n/all_locales.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        )
      ],
      child:
          BlocBuilder<ThemeBloc, ThemeChangeState>(builder: (context, state) {
        bool isDarkTheme = false;
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
