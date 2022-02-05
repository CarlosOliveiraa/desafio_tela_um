import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

class AnimalCards extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const AnimalCards({
    Key? key,
    this.width = 264,
    this.height = 99,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();

    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: colors.unSelectedColor,
      ),
      child: child,
    );
  }
}
