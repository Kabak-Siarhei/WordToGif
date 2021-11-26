import 'package:json_annotation/json_annotation.dart';
import 'package:word_to_gif/home/repository/api_repository/list_words.dart';

part 'api_list.g.dart';

@JsonSerializable()
class ApiList {
  List<ListWords> list;

  ApiList({required this.list});
}
