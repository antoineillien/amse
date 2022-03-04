import 'package:flutter/material.dart';

class Exercice4 extends StatefulWidget {
  const Exercice4({Key? key}) : super(key: key);

  @override
  _Exercice4State createState() => _Exercice4State();
}

class _Exercice4State extends State<Exercice4> {
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
        SizedBox(
            width: 150.0,
            height: 150.0,
            child: Container(
                margin: EdgeInsets.all(15),
                child: this.createTileWidgetFrom(tile))),
        Container(
            height: 200,
            child: Image.network(
                'https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_smoking.jpeg',
                fit: BoxFit.cover))
      ])),
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("tapped on tile");
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
            widthFactor: 0.3,
            heightFactor: 0.3,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}
