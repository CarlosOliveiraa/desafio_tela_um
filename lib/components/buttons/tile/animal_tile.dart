import 'package:flutter/material.dart';

class AnimalTile extends StatelessWidget {
  final String name;
  final String breed;
  final String sexo;
  final String location;

  const AnimalTile({
    Key? key,
    required this.name,
    required this.breed,
    required this.sexo,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          breed,
          style: const TextStyle(color: Colors.grey),
        ),
        Text(
          sexo,
          style: const TextStyle(color: Colors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.redAccent,
            ),
            Text(
              location,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
