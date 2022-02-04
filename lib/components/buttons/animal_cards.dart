import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

class AnimalCards extends StatelessWidget {
  final double width;
  final double height;

  const AnimalCards({
    Key? key,
    this.width = 264,
    this.height = 99,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: colors.unSelectedColor),
    );
  }
}
