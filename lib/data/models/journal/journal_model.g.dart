// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JournalModelImpl _$$JournalModelImplFromJson(Map<String, dynamic> json) =>
    _$JournalModelImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      headline: json['headline'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$JournalModelImplToJson(_$JournalModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'headline': instance.headline,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

_$JournalAnswerModelImpl _$$JournalAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JournalAnswerModelImpl(
      answer: json['answer'] as String,
      userId: json['userId'] as String,
      journalId: json['journalId'] as String,
      questionId: json['questionId'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$JournalAnswerModelImplToJson(
        _$JournalAnswerModelImpl instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'userId': instance.userId,
      'journalId': instance.journalId,
      'questionId': instance.questionId,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
