import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';

part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String example,
    required String question,
    required int order,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, Object?> json) =>
      _$QuestionModelFromJson(json);
}

QuestionModel generateMockQuestionModel() {
  return QuestionModel(
    example: 'Lorem ipsum',
    order: 1,
    question: 'Lorem ipsum',
    createdAt: DateTime.now(),
  );
}
