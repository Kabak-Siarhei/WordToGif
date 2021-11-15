import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/home.dart';
import 'package:word_to_gif/home/ui_kit/circle_page.dart';
import 'home/blocs/theme/theme_bloc.dart';
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
  ThemeData? themeData;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) {
        ThemeBloc themeBloc = ThemeBloc();
        themeBloc.add(ThemeInitialEvent());
        return themeBloc;
      },
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        if (state is ThemeChangeState) {
          themeData = state.isDarkTheme ? ThemeData.dark() : ThemeData.light();
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: AllLocales.all,
          theme: themeData,
          home: (state == ThemeLoadState) ? const CirclePage() : const HomePage(),
        );
      }),
    );
  }
}
