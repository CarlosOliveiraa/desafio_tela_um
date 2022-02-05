import 'package:desafio_tela_um/components/buttons/icons_buttons.dart';
import 'package:flutter/material.dart';

class CustonAppBar extends StatelessWidget {
  final double width;
  final double height;

  const CustonAppBar({Key? key, this.width = 283, this.height = 46})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            IconsButtons.menu,
            size: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Cameron St., Boston",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/pessoa.jpg"),
                  fit: BoxFit.fill),
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}
