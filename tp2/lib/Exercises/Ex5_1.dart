import 'package:flutter/material.dart';
import 'dart:math' as math;

class Ex5_1 extends StatefulWidget {
  const Ex5_1({Key? key}) : super(key: key);

  @override
  _Exercice5aState createState() => _Exercice5aState();
}

class _Exercice5aState extends State<Ex5_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Génération du plateau de tuile - couleurs aléatoires"),
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
              child: const Text("Tuile 1"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 2"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 3"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 4"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 5"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 6"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 7"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 8"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tuile 9"),
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
          ],
        ));
  }
}
