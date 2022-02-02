import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final double widht;
  final double height;

  const Background({Key? key, this.widht = 309, this.height = 582})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();

    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: colors.backgrounColor,
      ),
    );
  }
}
