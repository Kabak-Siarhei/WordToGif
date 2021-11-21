import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:word_to_gif/home/navigation/router.dart';
import 'package:word_to_gif/home/ui_kit/switch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.title ?? "Null"),
        actions: const [
          SwitchWidget(),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("GoToGifCard"),
          onPressed: () => Navigator.pushNamed(context, MyRoutes.gifCardRoute),
        ),
      ),
    );
  }
}
