import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class CopingRepository {
  Future<Either<Failure, List<CopingModel>>> getCopings();
}
