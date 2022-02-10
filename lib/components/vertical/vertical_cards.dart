import 'package:flutter/material.dart';

import '../../controller/controller.dart';
import '../buttons/animal_cards.dart';

class VerticalCards extends StatelessWidget {
  final double width;
  final double height;

  const VerticalCards({Key? key, this.width = 309, this.height = 600})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Controller controller = Controller();

    return Expanded(
      child: Container(
        width: width,
        height: height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: controller.animais.length,
            itemBuilder: (context, index) {
              return AnimalCards(
                width: size.width * 0.1,
                height: size.height * 0.20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.32,
                      height: size.height * 0.32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: controller.animais[index].color,
                        image: DecorationImage(
                          image: AssetImage(controller.animais[index].image),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          " ${controller.animais[index].name}",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text("  ${controller.animais[index].breed}"),
                        Text(
                            "  ${controller.animais[index].gender}, ${controller.animais[index].age}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.redAccent,
                            ),
                            Text(controller.animais[index].location)
                          ],
                        )
                      ],
                    ),
                    Icon(
                      controller.animais[index].icon,
                      color: controller.animais[index].iconColor,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
