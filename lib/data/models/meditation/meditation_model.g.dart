// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeditationModelImpl _$$MeditationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeditationModelImpl(
      colorCode: json['colorCode'] as String,
      subtitle: json['subtitle'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      title: json['title'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$MeditationModelImplToJson(
        _$MeditationModelImpl instance) =>
    <String, dynamic>{
      'colorCode': instance.colorCode,
      'subtitle': instance.subtitle,
      'thumbnailUrl': instance.thumbnailUrl,
      'title': instance.title,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
