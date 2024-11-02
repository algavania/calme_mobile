import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/coping/data/datasources/coping_remote_datasource.dart';
import 'package:calme_mobile/features/coping/domain/repositories/coping_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class CopingRepositoryImpl extends CopingRepository {
  CopingRepositoryImpl(this.dataSource);

  final CopingRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<CopingModel>>> getCopings() async {
    return safeCall(dataSource.getCopings);
  }
}
