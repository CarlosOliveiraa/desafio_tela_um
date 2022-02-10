import 'package:flutter/material.dart';
import '../buttons/animal_button.dart';
import '../buttons/filter_button.dart';
import '../buttons/icons_buttons.dart';
import '../buttons/tile/button_tile.dart';

class HorizontalMenu extends StatelessWidget {
  final double width;
  final double heigth;

  const HorizontalMenu({Key? key, this.width = 308, this.heigth = 38})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heigth,
      child: LayoutBuilder(builder: (context, constraints) {
        return ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: constraints.maxWidth * 0.04),
            FilterButton(
              size: constraints.maxWidth * 0.17,
            ),
            SizedBox(width: constraints.maxWidth * 0.06),
            AnimalButton(
              widht: constraints.maxWidth * 0.25,
              height: constraints.maxHeight,
              child: const ButtonTile(
                icons: IconsButtons.dog,
                title: "Dogs",
                style: Styles.dogs,
              ),
            ),
            SizedBox(width: constraints.maxWidth * 0.06),
            AnimalButton(
              widht: constraints.maxWidth * 0.25,
              height: constraints.maxHeight,
              child: const ButtonTile(
                icons: IconsButtons.cat,
                title: "Cats",
                style: Styles.cats,
              ),
              breed: Breed.cat,
            ),
            SizedBox(width: constraints.maxWidth * 0.06),
            AnimalButton(
              widht: constraints.maxWidth * 0.25,
              height: constraints.maxHeight,
              child: const ButtonTile(
                style: Styles.birds,
                icons: IconsButtons.bird,
                title: "Birds",
              ),
              breed: Breed.bird,
            ),
            SizedBox(width: constraints.maxWidth * 0.04),
          ],
        );
      }),
    );
  }
}
