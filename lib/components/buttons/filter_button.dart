import 'package:desafio_tela_um/components/buttons/icons_buttons.dart';
import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final double size;

  const FilterButton({
    Key? key,
    this.size = 37,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: colors.unSelectedColor),
      child: Icon(
        IconsButtons.tune,
        size: 100,
      ),
    );
  }
}
