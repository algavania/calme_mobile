import 'package:calme_mobile/data/models/meditation/session_model.dart';
import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meditation_model.freezed.dart';

part 'meditation_model.g.dart';

@freezed
class MeditationModel with _$MeditationModel {
  const factory MeditationModel({
    required String colorCode,
    required String subtitle,
    required String thumbnailUrl,
    required String title,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default([])
    List<SessionModel> sessions,
  }) = _MeditationModel;

  factory MeditationModel.fromJson(Map<String, Object?> json) =>
      _$MeditationModelFromJson(json);
}

MeditationModel generateMockMeditationModel() {
  return MeditationModel(
    title: 'Lorem ipsum',
    subtitle: 'Lorem ipsum',
    colorCode: 'FFB703',
    thumbnailUrl:
        'https://firebasestorage.googleapis.com/v0/b/calme-64dbe.appspot.com/o/meditations%2FByW607Dqnrq7YsZ5bTmK%2Fthumbnail.png?alt=media&token=2279b294-f53b-4679-9559-8d253e6a20a8',
    createdAt: DateTime.now(),
  );
}
