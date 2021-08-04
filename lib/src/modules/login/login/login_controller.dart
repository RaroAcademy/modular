import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/modules/login/repository/login_repository.dart';

import '../../../app_controller.dart';

class LoginController {
  final LoginRepository repository;

  LoginController({required this.repository});

  Future<void> login({
    required String email,
    required String password,
  }) async {
    Modular.get<AppController>().user = "user";
  }
}
