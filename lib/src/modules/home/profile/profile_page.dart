import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_app/src/shared/widgets/default_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> _buttons = [
    "Dados pessoais",
    "Sobre o App",
    "Alterar Senha",
    "Ajuda"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: List.generate(
          _buttons.length,
          (index) => DefaultButton(
            text: _buttons[index],
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
