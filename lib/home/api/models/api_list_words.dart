import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_list_words.g.dart';

@JsonSerializable()
class ListWords {
  @JsonKey(name:'definition')
  String describe;
  String author;
  String word;
  @JsonKey(name: 'written_on')
  String writtenDate;
  String example;

  String get date =>
      DateFormat('MMMM dd, hh:mma').format(DateTime.parse(writtenDate));

  ListWords({
    required this.word,
    required this.describe,
    required this.author,
    required this.example,
    required this.writtenDate,
  });

  factory ListWords.fromJson(Map<String, dynamic> json) =>
      _$ListWordsFromJson(json);

  Map<String, dynamic> toJson() => _$ListWordsToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return '\nword - $word\n definition - $describe\n example - $example\n author - $author\n date - $date\n';
  }
}
