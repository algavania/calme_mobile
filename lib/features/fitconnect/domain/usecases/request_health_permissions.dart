import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/fitconnect/domain/repositories/fitconnect_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class RequestHealthPermissions
    implements UseCase<Either<Failure, bool>, None<void>> {
  RequestHealthPermissions(this._repository);

  final FitConnectRepository _repository;

  @override
  Future<Either<Failure, bool>> call(None<void> _) {
    return _repository.requestHealthPermission();
  }
}
