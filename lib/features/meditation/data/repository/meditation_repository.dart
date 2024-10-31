import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/data/models/meditation/session_model.dart';

abstract class MeditationRepository {
  Future<List<MeditationModel>> getMeditations();
  Future<List<SessionModel>> getMeditationSessions(String meditationId);
}