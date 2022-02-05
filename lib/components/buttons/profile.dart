import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';

enum AnimProf { golden, boston, siberian, maltese, jack }

class Profile extends StatelessWidget {
  final double size;
  final AnimProf anim;
  final DecorationImage image;
  // final Widget child;

  const Profile({
    Key? key,
    this.size = 83,
    this.anim = AnimProf.golden,
    required this.image,
    // required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    late Decoration decoration;

    switch (anim) {
      case AnimProf.golden:
        decoration = BoxDecoration(
            image: image,
            borderRadius: BorderRadius.circular(20),
            color: colors.goldenColor);
        break;
      case AnimProf.boston:
        decoration = BoxDecoration(
            image: image,
            borderRadius: BorderRadius.circular(20),
            color: colors.bostonColor);
        break;
      case AnimProf.siberian:
        decoration = BoxDecoration(
          image: image,
          borderRadius: BorderRadius.circular(20),
          color: colors.siberianColor,
        );
        break;
      case AnimProf.maltese:
        decoration = BoxDecoration(
            image: image,
            borderRadius: BorderRadius.circular(20),
            color: colors.malteseColor);
        break;
      case AnimProf.jack:
        decoration = BoxDecoration(
            image: image,
            borderRadius: BorderRadius.circular(20),
            color: colors.jackColor);
        break;
      default:
    }

    return Container(
      width: size,
      height: size,
      decoration: decoration,
    );
  }
}
