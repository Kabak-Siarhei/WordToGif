// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_words.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ListWordsService extends ListWordsService {
  _$ListWordsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ListWordsService;

  @override
  Future<Response<dynamic>> getListWords(String searchWord) {
    final $url =
        'https://mashape-community-urban-dictionary.p.rapidapi.com/define?term=${searchWord}';
    final $headers = {
      'x-rapidapi-host': 'mashape-community-urban-dictionary.p.rapidapi.com',
      'x-rapidapi-key': '7be61a98b4mshf61bd8c68af3757p1a31c1jsn983c7256d22e',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
