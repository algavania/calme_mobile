// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      author: json['author'] as String,
      content: json['content'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      title: json['title'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'thumbnailUrl': instance.thumbnailUrl,
      'title': instance.title,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
