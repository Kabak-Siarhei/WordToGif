import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:word_to_gif/home/ui_kit/switch_widget.dart';
import 'package:word_to_gif/l10n/all_locales.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AllLocales.all,
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.title ?? "Null"),
          actions: const [
            SwitchWidget(),
          ],
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
