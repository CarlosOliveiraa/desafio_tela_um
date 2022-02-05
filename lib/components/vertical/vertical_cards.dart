import 'package:desafio_tela_um/components/buttons/animal_cards.dart';
import 'package:desafio_tela_um/components/buttons/profile.dart';
import 'package:desafio_tela_um/components/buttons/tile/animal_tile.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profile(
                      size: constraints.maxWidth * 0.28,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/golden2.png")),
                    ),
                    const AnimalTile(
                      name: "Sparky",
                      breed: "Golden Retriever",
                      sexo: "Female, 8 months old",
                      location: "2,5 kms away",
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profile(
                      anim: AnimProf.boston,
                      size: constraints.maxWidth * 0.28,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/boston.png")),
                    ),
                    const AnimalTile(
                      name: "Charlie",
                      breed: "Boston Terrier",
                      sexo: "Male, 1.5 years old",
                      location: "2,6 kms away",
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profile(
                      anim: AnimProf.siberian,
                      size: constraints.maxWidth * 0.28,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/siberian2.png")),
                    ),
                    const AnimalTile(
                      name: "Max",
                      breed: "Siberian Husky",
                      sexo: "Male, 1 years old",
                      location: "2,9 kms away",
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profile(
                      anim: AnimProf.maltese,
                      size: constraints.maxWidth * 0.28,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/maltese.png")),
                    ),
                    const AnimalTile(
                      name: "Daisy",
                      breed: "Maltese",
                      sexo: "Female, 7 months old",
                      location: "3,1 kms away",
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
            AnimalCards(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.25,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Profile(
                      anim: AnimProf.boston,
                      size: constraints.maxWidth * 0.28,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/jack.png")),
                    ),
                    const AnimalTile(
                      name: "Zoe",
                      breed: "Jack Russel Terrier",
                      sexo: "Female, 2 years old",
                      location: "3,6 kms away",
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: constraints.maxHeight * 0.03),
          ],
        );
      }),
    );
  }
}
