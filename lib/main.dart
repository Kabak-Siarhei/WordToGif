import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'l10n/all_locales.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
