import 'package:calme_mobile/data/models/coping/coping_model.dart';

abstract class CopingRepository {
  Future<List<CopingModel>> getCopings();
}