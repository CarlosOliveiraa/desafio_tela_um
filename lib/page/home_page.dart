import 'package:desafio_tela_um/components/background.dart';
import 'package:desafio_tela_um/components/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../components/buttons/animal_cards.dart';
import '../controller/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Controller controller = Controller();

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustonAppBar(
            width: size.width * 0.8,
          ),
          Expanded(
            child: Background(
              widht: size.width,
            ),
          ),
        ],
      )),
    );
  }
}
