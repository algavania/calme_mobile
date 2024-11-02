import 'package:calme_mobile/data/models/meditation/session_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/meditation/domain/repositories/meditation_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetMeditationSessions
    implements UseCase<Either<Failure, List<SessionModel>>, String> {
  GetMeditationSessions(this._repository);

  final MeditationRepository _repository;

  @override
  Future<Either<Failure, List<SessionModel>>> call(String params) {
    return _repository.getMeditationSessions(params);
  }
}
