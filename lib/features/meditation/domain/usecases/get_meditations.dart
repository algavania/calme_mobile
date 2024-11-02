import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/meditation/domain/repositories/meditation_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetMeditations
    implements UseCase<Either<Failure, List<MeditationModel>>, None<void>> {
  GetMeditations(this._repository);

  final MeditationRepository _repository;

  @override
  Future<Either<Failure, List<MeditationModel>>> call(None<void> _) {
    return _repository.getMeditations();
  }
}
