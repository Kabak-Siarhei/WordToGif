import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:word_to_gif/home/api/models/api_list.dart';
import 'package:word_to_gif/home/api/models/api_list_words.dart';
import 'package:word_to_gif/home/api/service/get_api_word_service.dart';
import 'package:word_to_gif/home/api/service_locator.dart';
import 'package:word_to_gif/home/ui_kit/card_page.dart';
import 'package:word_to_gif/home/ui_kit/switch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)?.title ?? "Null"),
            actions: const [
              SwitchWidget(),
            ],
          ),
          body: _buildBody(context),
        ),
    );
  }
}

FutureBuilder<Response<ApiList>> _buildBody(BuildContext context) {
  return FutureBuilder<Response<ApiList>>(
      future: getIt.get<GetApiWordService>().getListWord("word"),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }
          final list = snapshot.data?.body?.list;
          return _buildListWords(context, list);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      });
}

ListView _buildListWords(BuildContext context, List<ListWords>? list) {
  return ListView.builder(
      itemCount: list?.length,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        return CardPage(list: list![index]);
      });
}


