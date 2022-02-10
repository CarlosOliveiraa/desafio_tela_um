import 'package:flutter/material.dart';

import '../components/buttons/animais.dart';

class Controller {
  List<Animais> animais = [
    Animais(
        name: "Sparky",
        breed: "Golden Retriever",
        gender: "Female",
        age: "8 months old",
        image: "assets/images/golden2.png",
        location: '2,5 kms away',
        color: const Color(0xffE7D78F),
        icon: Icons.favorite,
        iconColor: Colors.redAccent),
    Animais(
        name: "Charlie",
        breed: "Boston Terrier",
        gender: "Male",
        age: "1,5 years old",
        image: "assets/images/boston.png",
        location: '2,6 kms away',
        color: const Color(0xff9BCFCE),
        icon: Icons.favorite_border,
        iconColor: Colors.grey),
    Animais(
        name: "Max",
        breed: "Siberian Husky",
        gender: "Male",
        age: "1 years old",
        image: "assets/images/siberian2.png",
        location: '2,9 kms away',
        color: const Color(0xff94C6DB),
        icon: Icons.favorite_border,
        iconColor: Colors.grey),
    Animais(
        name: "Daisy",
        breed: "Maltese",
        gender: "Female",
        age: "7 months old",
        image: "assets/images/maltese.png",
        location: '3,1 kms away',
        color: const Color(0xffEEB290),
        icon: Icons.favorite_border,
        iconColor: Colors.grey),
    Animais(
        name: "Zoe",
        breed: "Jack Russel Terrier",
        gender: "Male",
        age: "1,5 years old",
        image: "assets/images/jack.png",
        location: '2,6 kms away',
        color: const Color(0xffBDD3AA),
        icon: Icons.favorite_border,
        iconColor: Colors.grey),
  ];
}
