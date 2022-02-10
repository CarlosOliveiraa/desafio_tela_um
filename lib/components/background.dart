import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../controller/controller.dart';
import 'buttons/animal_cards.dart';
import 'horizontal/horizontal_menu.dart';
import 'vertical/vertical_cards.dart';

class Background extends StatelessWidget {
  final double widht;
  final double height;

  const Background({Key? key, this.widht = 309, this.height = 582})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Controller controller = Controller();

    AppColors colors = AppColors();
    return Container(
      alignment: Alignment.topCenter,
      width: widht,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors.backgrounColor,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: HorizontalMenu(
              width: size.width,
              heigth: size.height * 0.1,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          VerticalCards(
            width: size.width * 0.9,
          )
        ],
      ),
    );
  }
}
