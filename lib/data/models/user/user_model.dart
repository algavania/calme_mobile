import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String name,
    required String email,
    @TimestampConverter() required DateTime createdAt,
    String? imageUrl,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

UserModel generateMockUserModel() {
  return UserModel(
      name: 'Fulan bin Fulan',
      email: 'fulan@gmail.om',
      createdAt: DateTime.now());
}
