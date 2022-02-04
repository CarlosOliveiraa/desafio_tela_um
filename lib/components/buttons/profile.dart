import 'package:desafio_tela_um/constants/constants.dart';
import 'package:flutter/material.dart';


enum AnimProf {golden, boston, siberian, maltese, jack}

class Profile extends StatelessWidget {

  final double size;
  final AnimProf anim;
  final DecorationImage image;

  const Profile({ Key? key, this.size = 83, this.anim = AnimProf.golden, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppColors colors = AppColors();
    late Decoration decoration;

    switch (anim) {
      case AnimProf.golden:
        decoration = BoxDecoration(
          image: image,
          borderRadius: BorderRadius.circular(20),
          color: colors.goldenColor
        );
        break;
      default:
    }


    return Container(
      width: size,
      height: size,
      
    );
  }
}