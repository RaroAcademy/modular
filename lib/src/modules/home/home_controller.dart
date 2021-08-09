import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/shared/constants/routes.dart';

class HomeController extends Disposable {
  @override
  void dispose() {
    final keys = AppRoutes();

    print(keys.editProfile);
    // cameraController.dispose();
  }
}
