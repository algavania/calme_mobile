// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CopingModelImpl _$$CopingModelImplFromJson(Map<String, dynamic> json) =>
    _$CopingModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$CopingModelImplToJson(_$CopingModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
