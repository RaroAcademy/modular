import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/modules/login/create_account/create_account_controller.dart';
import 'package:modular_app/src/modules/login/login/login_controller.dart';
import 'package:modular_app/src/shared/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  void initState() {
// store.login(email: email, password: password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomTextField(labelText: "E-mail"),
          CustomTextField(labelText: "Senha"),
          ElevatedButton(
            onPressed: () => Modular.to.navigate("/home"),
            child: Text("Login"),
          ),
          ElevatedButton(
            onPressed: () => Modular.to.navigate("/login/recovery_password"),
            child: Text("Recuperar senha"),
          ),
          ElevatedButton(
            onPressed: () {
              Modular.to.navigate("/login/create_account");
            },
            child: Text("Criar conta"),
          ),
          ElevatedButton(
            onPressed: () {
              Modular.get<CreateAccountController>().updateValue("value");
            },
            child: Text("Print value"),
          ),
        ],
      ),
    );
  }
}
