import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/modules/home/home_controller.dart';
import 'package:modular_app/src/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => HomeController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => MyHomePage()),
      ];
}
