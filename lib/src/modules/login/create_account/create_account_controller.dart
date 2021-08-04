import 'package:modular_app/src/modules/login/repository/login_repository.dart';

class CreateAccountController {
  final LoginRepository repository;
  late String name = "";

  CreateAccountController({required this.repository});

  void updateValue(String value) {
    name = value;
  }
}
