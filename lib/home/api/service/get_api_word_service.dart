import 'package:chopper/chopper.dart';
import 'package:word_to_gif/home/api/converter/model_converter.dart';
import 'package:word_to_gif/home/api/models/api_list.dart';

part 'get_api_word_service.chopper.dart';

const Map<String, String> headers = {
  'x-rapidapi-host': 'mashape-community-urban-dictionary.p.rapidapi.com',
  'x-rapidapi-key': '7be61a98b4mshf61bd8c68af3757p1a31c1jsn983c7256d22e'
};

@ChopperApi()
abstract class GetApiWordService extends ChopperService {
  @Get(path: '/define?term={word}', headers: headers)
  Future<Response<ApiList>> getListWord(@Path('word') String word);

  static GetApiWordService create() {
    final client = ChopperClient(
      baseUrl: 'https://mashape-community-urban-dictionary.p.rapidapi.com',
      interceptors: [
        HttpLoggingInterceptor(),
      ],
      services: [
        _$GetApiWordService(),
      ],
      converter: ModelConverter(),
    );
    return _$GetApiWordService(client);
  }
}
