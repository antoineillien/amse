import 'package:flutter/material.dart';

class Ex5_2 extends StatefulWidget {
  const Ex5_2({
    Key? key,
  }) : super(key: key);
  @override
  State<Ex5_2> createState() => _Exercice5bState();
}

class _Exercice5bState extends State<Ex5_2> {
  List<Tile> tiles = [
    Tile(
      alignment: Alignment.topLeft,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.topCenter,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.topRight,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.centerLeft,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.center,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.centerRight,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.bottomLeft,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.bottomCenter,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
    Tile(
      alignment: Alignment.bottomRight,
      factor: 0.3,
      image: 'Images/david_lynch_smoking.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Génération d'un plateau de tuile à partir d'une image"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              tiles[0],
              tiles[1],
              tiles[2],
              tiles[3],
              tiles[4],
              tiles[5],
              tiles[6],
              tiles[7],
              tiles[8],
            ],
          ),
        ));
  }
}

class Tile extends StatelessWidget {
  String image;
  double factor;
  Alignment alignment;

  Tile(
      {Key? key,
      required this.alignment,
      required this.factor,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Align(
          alignment: alignment,
          widthFactor: factor,
          heightFactor: factor,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
