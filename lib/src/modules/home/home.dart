import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_app/src/modules/home/profile/profile_page.dart';

import '../../app_controller.dart';
import 'extract/extract_page.dart';
import 'home/home_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    print(Modular.get<AppController>().user);
    super.initState();
  }

  final homeKey = GlobalKey<FormState>();
  final extractKey = GlobalKey<FormState>();
  final profileKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modular Application"),
      ),
      body: PageView(
        children: [
          HomePage(key: homeKey),
          ExtractPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
