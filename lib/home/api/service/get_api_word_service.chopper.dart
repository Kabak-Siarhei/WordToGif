// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_word_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$GetApiWordService extends GetApiWordService {
  _$GetApiWordService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GetApiWordService;

  @override
  Future<Response<ApiList>> getListWord(String word) {
    final $url = '/define?term=${word}';
    final $headers = {
      'x-rapidapi-host': 'mashape-community-urban-dictionary.p.rapidapi.com',
      'x-rapidapi-key': '7be61a98b4mshf61bd8c68af3757p1a31c1jsn983c7256d22e',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ApiList, ApiList>($request);
  }
}
