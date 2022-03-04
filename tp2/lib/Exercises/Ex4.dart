import 'package:flutter/material.dart';

class Ex4 extends StatefulWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  _Exercice4State createState() => _Exercice4State();
}

class _Exercice4State extends State<Ex4> {
  Tile tile = new Tile(
      imageURL:
          'https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_smoking.jpeg',
      alignment: Alignment(0, 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Génération d'une tuile"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: [
        Container(
          child: Text("Image de départ : "),
        ),
        Container(
          child: const SizedBox(height: 30),
        ),
        Container(
            height: 200,
            child: Image.network(
                'https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_smoking.jpeg',
                fit: BoxFit.cover)),
        Container(
          child: const SizedBox(height: 30),
        ),
        Container(
          child: Text("Tuile issue de l'image : "),
        ),
        Container(
          child: const SizedBox(height: 30),
        ),
        SizedBox(
            width: 200.0,
            height: 200.0,
            child: Container(
                margin: EdgeInsets.all(15),
                child: this.createTileWidgetFrom(tile))),
      ])),
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("Tuile");
      },
    );
  }
}

class Tile {
  String imageURL;
  Alignment alignment;

  Tile({required this.imageURL, required this.alignment});

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 0.2,
            heightFactor: 0.2,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}
