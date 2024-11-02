import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:dartz/dartz.dart';

Future<Either<Failure, T>> safeCall<T>(Future<T> Function() operation) async {
  try {
    return Right(await operation());
  } catch (e, s) {
    logger.e('error', error: e.toString(), stackTrace: s);
    return Left(Failure(e.toString()));
  }
}

mixin UseCase<T, P> {
  Future<T> call(P params);
}
