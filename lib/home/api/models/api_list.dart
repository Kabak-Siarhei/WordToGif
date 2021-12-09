import 'package:json_annotation/json_annotation.dart';
import 'package:word_to_gif/home/api/models/api_list_words.dart';

part 'api_list.g.dart';

@JsonSerializable()
class ApiList {
  List<ListWords> list;

  ApiList({required this.list});

  factory ApiList.fromJson(Map<String, dynamic> json) =>
      _$ApiListFromJson(json);

  Map<String, dynamic> toJson() => _$ApiListToJson(this);
}
