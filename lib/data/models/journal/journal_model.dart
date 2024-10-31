import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journal_model.freezed.dart';

part 'journal_model.g.dart';

@freezed
class JournalModel with _$JournalModel {
  const factory JournalModel({
    required String title,
    required String subtitle,
    required String headline,
    required String description,
    required String thumbnailUrl,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _JournalModel;

  factory JournalModel.fromJson(Map<String, Object?> json) =>
      _$JournalModelFromJson(json);
}

JournalModel generateMockJournalModel() {
  return JournalModel(
    title: 'Lorem ipsum',
    subtitle: 'Lorem ipsum',
    headline: 'Lorem ipsum',
    description: 'Lorem ipsum',
    thumbnailUrl:
        'https://firebasestorage.googleapis.com/v0/b/calme-64dbe.appspot.com/o/journals%2FsZyvtzL0fZ1JC7YF68Vy%2Fthumbnail.png?alt=media&token=61995160-192b-4866-8647-2c2a9ae5f17c',
    createdAt: DateTime.now(),
  );
}

@freezed
class JournalAnswerModel with _$JournalAnswerModel {
  const factory JournalAnswerModel({
    required String answer,
    required String userId,
    required String journalId,
    required String questionId,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _JournalAnswerModel;

  factory JournalAnswerModel.fromJson(Map<String, Object?> json) =>
      _$JournalAnswerModelFromJson(json);
}

JournalAnswerModel generateMockJournalAnswerModel() {
  return JournalAnswerModel(
    answer: 'Lorem ipsum',
    userId: '',
    journalId: 'journalId',
    questionId: 'questionId',
    createdAt: DateTime.now(),
  );
}
