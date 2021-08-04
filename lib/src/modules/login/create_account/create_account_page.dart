import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/modules/login/create_account/create_account_controller.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final store = Modular.get<CreateAccountController>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Modular.to.navigate("/login"),
                child: Text("Voltar")),
            ElevatedButton(
              onPressed: () {
                store.updateValue("Alencar");
              },
              child: Text("Criar conta"),
            ),
          ],
        ),
      ),
    );
  }
}
