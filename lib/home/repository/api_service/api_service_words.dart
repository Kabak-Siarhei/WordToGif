import 'dart:async';
import 'package:chopper/chopper.dart';

part 'api_service_words.chopper.dart';

@ChopperApi(
    baseUrl:
        "https://mashape-community-urban-dictionary.p.rapidapi.com")
abstract class ListWordsService extends ChopperService {
  static ListWordsService create([ChopperClient? client]) => _$ListWordsService(client);
  static const headers =  {
    'x-rapidapi-host': 'mashape-community-urban-dictionary.p.rapidapi.com',
    'x-rapidapi-key': '7be61a98b4mshf61bd8c68af3757p1a31c1jsn983c7256d22e'
  };
  @Get(path: "/define?term={word}",headers: headers)
  Future<Response> getListWords(@Path("word") String searchWord);
}
