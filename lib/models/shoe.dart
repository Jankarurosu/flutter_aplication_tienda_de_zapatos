import 'package:flutter/material.dart';

class Shoe {
  final String name;
  final String imageName;
  final String description;
  final String price;
  final Color bgColor;
  final List<Color> availableColors;

  Shoe(this.name, this.imageName, this.description, this.price, this.bgColor,
      this.availableColors);
}

List<Shoe> categoriesShoes = [
  Shoe(
    "Air Nike",
    "shoe1.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 250",
    Colors.red,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    "Black Nike",
    "shoe2.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 160",
    Colors.pink,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    "Soccer shoes Nike",
    "shoe3.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 290",
    Colors.green,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
];

List<Shoe> recommendedShoes = [
  Shoe(
    "Soccers blue Nike",
    "shoe4.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 280",
    Colors.blue,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    "Red Nike",
    "shoe5.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 170",
    Colors.orange,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    "Blue Shoes Nike",
    "shoe6.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 120",
    Colors.grey,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    "Shoes Nike",
    "shoe7.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 110",
    Colors.lightBlue,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
  Shoe(
    "Air Max Nike",
    "shoe8.png",
    "texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba,texto de prueba",
    "S/. 350",
    Colors.brown,
    [Colors.red, Colors.pink, Colors.yellow],
  ),
];
