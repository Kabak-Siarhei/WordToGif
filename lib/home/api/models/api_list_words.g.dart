// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_list_words.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListWords _$ListWordsFromJson(Map<String, dynamic> json) => ListWords(
      word: json['word'] as String,
      describe: json['definition'] as String,
      author: json['author'] as String,
      example: json['example'] as String,
      writtenDate: json['written_on'] as String,
    );

Map<String, dynamic> _$ListWordsToJson(ListWords instance) => <String, dynamic>{
      'definition': instance.describe,
      'author': instance.author,
      'word': instance.word,
      'written_on': instance.writtenDate,
      'example': instance.example,
    };
