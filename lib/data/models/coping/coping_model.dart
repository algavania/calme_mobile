import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coping_model.freezed.dart';

part 'coping_model.g.dart';

@freezed
class CopingModel with _$CopingModel {
  const factory CopingModel({
    required String title,
    required String description,
    required String thumbnailUrl,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _CopingModel;

  factory CopingModel.fromJson(Map<String, Object?> json) =>
      _$CopingModelFromJson(json);
}

CopingModel generateMockCopingModel() {
  return CopingModel(
    title: 'Lorem ipsum',
    description: 'Lorem ipsum',
    thumbnailUrl:
        'https://firebasestorage.googleapis.com/v0/b/calme-64dbe.appspot.com/o/copings%2F2gpHrqm2xpGqseQLWqtV%2Fthumbnail.png?alt=media&token=7621840b-45d9-4722-9f99-ac6c2af15eac',
    createdAt: DateTime.now(),
  );
}
