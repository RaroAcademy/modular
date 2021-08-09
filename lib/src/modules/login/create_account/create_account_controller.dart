import 'package:modular_app/src/modules/login/repository/login_repository.dart';

class CreateAccountController {
  final LoginRepository repository;
  late String name = "";

  CreateAccountController({required this.repository});

  void updateValue(String value) {
    name = value;
  }
}


//! Navegação por rotas Nomeadas no Modular
//! Modular.to.pushNamed()
// Navega para a rota destino como por ex.:
// Modular.to.pushNamed("/create_account");

//! Modular.to.popUntil()
// Volta todas as rotas que estão 
// na minha pilha, até a rota destino
// Modular.to.popUntil("/home")

//! Modular.to.pushAndRemoveUntil()
// Da push na rota destino
// e remove todas as rotas anteriores

//! Modular.to.pop()
// remove a rota atual, voltando para a página anterior

//! Modular.to.pushReplacementNamed()
// remove a rota atual, e navega para a rota destino
// Modular.to.pushReplacementNamed("/login")

//! Modular.to.navigate()
//  Modular.to.navigate("..");
//  Modular.to.navigate("/home/profile/edit/adress/cep");
//  Modular.to.navigate("../../personal_data");