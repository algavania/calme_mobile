import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/data/models/meditation/session_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class MeditationRepository {
  Future<Either<Failure, List<MeditationModel>>> getMeditations();

  Future<Either<Failure, List<SessionModel>>> getMeditationSessions(
    String meditationId,
  );
}
