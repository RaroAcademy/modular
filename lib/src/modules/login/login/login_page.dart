import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/modules/login/create_account/create_account_controller.dart';
import 'package:modular_app/src/modules/login/login/login_controller.dart';
import 'package:modular_app/src/shared/validators/input_validators.dart';
import 'package:modular_app/src/shared/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 64.0),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          labelText: "E-mail",
                          textInputAction: TextInputAction.next,
                          validator: (value) =>
                              InputValidators().emailValidator(value),
                        ),
                        SizedBox(height: 8.0),
                        CustomTextField(
                          labelText: "Senha",
                          validator: (value) =>
                              InputValidators().passwordValidator(value),
                        ),
                      ],
                    )),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate())
                                  Modular.to.navigate("/home");
                              },
                              child: Text("Login"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => Modular.to
                                  .navigate("/login/recovery_password"),
                              child: Text("Recuperar senha"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Modular.to.navigate("/login/create_account");
                              },
                              child: Text("Criar conta"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Modular.get<CreateAccountController>()
                                    .updateValue("value");
                              },
                              child: Text("Print value"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
