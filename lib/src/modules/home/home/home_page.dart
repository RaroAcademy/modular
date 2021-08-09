import 'package:flutter/material.dart';
import 'package:modular_app/src/modules/home/widgets/widgets.dart';
import 'package:modular_app/src/shared/themes/sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(height: Sizes.xxl64),
          PromotionCard(),
          SizedBox(height: Sizes.s8),
        ],
      ),
    );
  }
}
