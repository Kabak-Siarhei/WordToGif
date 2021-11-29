import 'dart:async';
import 'package:chopper/chopper.dart';

part 'api_service_word.dart.chopper.dart';

@ChopperApi(
    baseUrl:
        "https://mashape-community-urban-dictionary.p.rapidapi.com/define?term=")
abstract class ListWordsService extends ChopperService {
  @Get()
  Future<Response> getListWords();
}
