import 'package:calme_mobile/app/app.dart';
import 'package:calme_mobile/bootstrap.dart';
import 'package:calme_mobile/main_production.dart';

void main() async {
  await setup();
  await bootstrap(() => const App());
}
