import 'package:desafio_tela_um/components/buttons/filter_button.dart';
import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

import 'buttons/animal_Button.dart';
import 'buttons/icons_buttons.dart';

class Background extends StatelessWidget {
  final double widht;
  final double height;

  const Background({Key? key, this.widht = 309, this.height = 582})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.center,
        width: widht,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors.backgrounColor,
        ),
        child: const FilterButton(
          size: 100,
        ),
      );
    });
  }
}
