import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/data/models/meditation/session_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/meditation/data/datasources/meditation_remote_datasource.dart';
import 'package:calme_mobile/features/meditation/domain/repositories/meditation_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class MeditationRepositoryImpl extends MeditationRepository {
  MeditationRepositoryImpl(this.dataSource);

  final MeditationRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<SessionModel>>> getMeditationSessions(
    String meditationId,
  ) {
    return safeCall(() => dataSource.getMeditationSessions(meditationId));
  }

  @override
  Future<Either<Failure, List<MeditationModel>>> getMeditations() {
    return safeCall(dataSource.getMeditations);
  }
}
