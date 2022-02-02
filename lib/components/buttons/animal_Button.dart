import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

enum Breed { dog, cat, bird }

class AnimalButton extends StatelessWidget {
  final double widht;
  final double height;
  final Breed breed;
  final Widget? child;

  const AnimalButton(
      {Key? key,
      this.widht = 72,
      this.height = 37,
      this.breed = Breed.dog,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    late Decoration decoration;

    switch (breed) {
      case Breed.dog:
        decoration = BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: colors.selectedColor,
        );

        break;
      default:
    }

    return Container(
      width: widht,
      height: height,
      child: child,
      decoration: decoration,
    );
  }
}
