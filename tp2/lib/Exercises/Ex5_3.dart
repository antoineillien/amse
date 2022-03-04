import 'package:flutter/material.dart';

class Ex5_3 extends StatefulWidget {
  const Ex5_3({Key? key}) : super(key: key);

  @override
  _Exercice5cState createState() => _Exercice5cState();
}

class _Exercice5cState extends State<Ex5_3> {
  double tilesDivisions = 5.0;
  List<Tile> tiles = [];

  @override
  Widget build(BuildContext context) {
    final double cWidth = MediaQuery.of(context).size.width;
    updateTiles();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Génération d'un plateau réglable de tuile à partir d'une image"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: cWidth,
                height: cWidth,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: tilesDivisions.toInt()),
                    itemCount: tiles.length,
                    itemBuilder: (context, index) {
                      return createTileWidgetFrom(tiles[index]);
                    }),
              ),
              Row(
                children: [
                  const Text("Divisions : "),
                  Expanded(
                    child: Slider(
                      value: tilesDivisions,
                      min: 2,
                      max: 10,
                      divisions: 8,
                      activeColor: Colors.blue,
                      onChanged: (double value) {
                        setState(() {
                          tilesDivisions = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  void updateTiles() {
    tiles = [];
    for (int i = 0; i < tilesDivisions; i++) {
      for (int j = 0; j < tilesDivisions; j++) {
        tiles.add(Tile(
          alignment: Alignment(-1 + 2 * j / (tilesDivisions - 1),
              -1 + 2 * i / (tilesDivisions - 1)),
          factor: 1 / tilesDivisions,
          image: 'Images/david_lynch_smoking.jpeg',
        ));
      }
    }
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(1),
        child: tile,
      ),
    );
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
