// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionModelImpl _$$SessionModelImplFromJson(Map<String, dynamic> json) =>
    _$SessionModelImpl(
      order: (json['order'] as num).toInt(),
      length: (json['length'] as num).toInt(),
      thumbnailUrl: json['thumbnailUrl'] as String,
      audioUrl: json['audioUrl'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$SessionModelImplToJson(_$SessionModelImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'length': instance.length,
      'thumbnailUrl': instance.thumbnailUrl,
      'audioUrl': instance.audioUrl,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
