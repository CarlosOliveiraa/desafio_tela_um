import '../../../constants/constants.dart';
import 'package:flutter/material.dart';

enum Styles { dogs, cats, birds }

class ButtonTile extends StatelessWidget {
  final IconData? icons;
  final String title;
  final double width;
  final double height;
  final Styles style;

  const ButtonTile(
      {Key? key,
      this.icons,
      this.title = "",
      this.width = 52,
      this.height = 18,
      this.style = Styles.dogs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    late Color color;

    switch (style) {
      case Styles.dogs:
        color = colors.unSelectedColor;
        break;
      case Styles.cats:
        color = colors.disabledColor;
        break;
      case Styles.birds:
        color = colors.disabledColor;
        break;
      default:
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icons,
          color: color,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
