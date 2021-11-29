import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:word_to_gif/home/repository/api_service/api_service_words.dart';
import 'package:word_to_gif/home/repository/service_locator.dart';
import 'package:word_to_gif/home/ui_kit/switch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Response<dynamic>> response;

  @override
  void initState() {
    getIt.isReady<ChopperClient>().then((_) => getIt<ChopperClient>()
        .getService<ListWordsService>()
        .getListWords('word'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.title ?? "Null"),
        actions: const [
          SwitchWidget(),
        ],
      ),
      body: FutureBuilder(
        future: getIt.getAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == 200) {
            return Center(
              child: Text("${snapshot.data.toString()}"),
            );
          }
          return const Center(
            child: Text("connectionState is Lost"),
          );
        },
      ),
    );
  }
}
