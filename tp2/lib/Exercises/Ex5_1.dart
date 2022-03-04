import 'package:flutter/material.dart';
import 'dart:math' as math;

class Exercice5a extends StatefulWidget {
  const Exercice5a({Key? key}) : super(key: key);

  @override
  _Exercice5aState createState() => _Exercice5aState();
}

class _Exercice5aState extends State<Exercice5a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Génération d'un plateau de tuile de couleur"),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(15),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 3,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 1"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 2"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 3"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 4"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 5"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 6"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 7"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 8"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 9"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
          ],
        ));
  }
}
