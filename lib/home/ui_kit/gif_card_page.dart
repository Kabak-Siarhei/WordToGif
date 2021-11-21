import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/ui_kit/loading_page.dart';
import 'package:word_to_gif/home/ui_kit/switch_widget.dart';
import 'package:word_to_gif/l10n/all_locales.dart';

class GifPage extends StatefulWidget {
  const GifPage({Key? key}) : super(key: key);

  @override
  _GifPageState createState() => _GifPageState();
}

class _GifPageState extends State<GifPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return state.map(
          loadingState: (value) => const LoadingPage(),
          changeState: (value) => MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: value.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
            supportedLocales: AllLocales.all,
            home: Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context)?.title ?? "Null"),
                actions: const [
                  SwitchWidget(),
                ],
              ),
              body: const Center(
                child: Text("GIF"),
              ),
            ),
          ),
        );
      },
    );
  }
}