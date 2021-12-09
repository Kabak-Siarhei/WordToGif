import 'package:chopper/chopper.dart';
import 'package:japx/japx.dart';
import 'package:word_to_gif/home/api/models/api_list.dart';
import 'package:word_to_gif/home/api/models/api_list_words.dart';

class ModelConverter extends JsonConverter {
  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    final jsonResult = super.convertResponse<dynamic, dynamic>(response);
    if (jsonResult.body == null ||
        (jsonResult.body is String && (jsonResult.body as String).isEmpty)) {
      return jsonResult.copyWith(body: null);
    }
    final decodedItem = ApiList.fromJson(jsonResult.body as Map<String,dynamic>);
    return jsonResult.copyWith(body: decodedItem as ResultType);
  }
}
