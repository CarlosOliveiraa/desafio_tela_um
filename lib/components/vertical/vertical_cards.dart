import 'package:desafio_tela_um/components/buttons/animal_cards.dart';
import 'package:flutter/material.dart';

class VerticalCards extends StatelessWidget {
  final double width;
  final double height;

  const VerticalCards({Key? key, this.width = 309, this.height = 503})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
          ],
        );
      }),
    );
  }
}
