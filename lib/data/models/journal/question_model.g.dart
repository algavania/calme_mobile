// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      example: json['example'] as String,
      question: json['question'] as String,
      order: (json['order'] as num).toInt(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'example': instance.example,
      'question': instance.question,
      'order': instance.order,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
