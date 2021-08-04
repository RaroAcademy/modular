import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/modules/authentication/splash_module.dart';
import 'package:modular_app/src/modules/home/home_module.dart';
import 'package:modular_app/src/modules/login/login_module.dart';

import 'app_controller.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => AppController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute("/login", module: LoginModule()),
        ModuleRoute("/home", module: HomeModule()),
      ];
}
