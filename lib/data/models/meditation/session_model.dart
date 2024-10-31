import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';

part 'session_model.g.dart';

@freezed
class SessionModel with _$SessionModel {
  const factory SessionModel({
    required int order,
    required int length,
    required String thumbnailUrl,
    required String audioUrl,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, Object?> json) =>
      _$SessionModelFromJson(json);
}

SessionModel generateMockSessionModel() {
  return SessionModel(
    order: 1,
    length: 5,
    audioUrl: '',
    thumbnailUrl:
        'https://firebasestorage.googleapis.com/v0/b/calme-64dbe.appspot.com/o/meditations%2FByW607Dqnrq7YsZ5bTmK%2Fsessions%2F7uEqtOlCIry0u0RG61EI%2Fthumbnail.png?alt=media&token=4b4d523b-86a5-4983-a7ab-639568e53b30',
    createdAt: DateTime.now(),
  );
}
