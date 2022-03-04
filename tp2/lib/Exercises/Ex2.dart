import 'package:flutter/material.dart';

import "dart:math" show pi;

class Exercice2 extends StatefulWidget {
  const Exercice2({Key? key}) : super(key: key);

  @override
  _Exercice2State createState() => _Exercice2State();
}

class _Exercice2State extends State<Exercice2> {
  double rotX = 0;
  double rotZ = 0;
  bool mirror = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rotate / resize image")),
      body: SingleChildScrollView(
        child: Column(children: [
          //Image
          Container(
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..scale(scale)
                ..rotateY(mirror ? pi : 0)
                ..rotateX(rotX)
                ..rotateZ(rotZ),
              child: const Image(
                image: NetworkImage(
                    "https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_onset.jpeg"),
              ),
            ),
            padding: const EdgeInsets.all(10),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(color: Colors.white),
          ),

          // Rotation selon x
          Container(
            child: Row(
              children: [
                const Text("Rotation X:"),
                Expanded(
                  child: Slider(
                    value: rotX,
                    min: -pi,
                    max: pi,
                    onChanged: (double value) {
                      setState(() {
                        rotX = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),

          // Rotation selon y
          Container(
            child: Row(
              children: [
                const Text("Rotation Z:"),
                Expanded(
                  child: Slider(
                    value: rotZ,
                    min: -pi,
                    max: pi,
                    onChanged: (double value) {
                      setState(() {
                        rotZ = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),

          //Rotation selon z
          Container(
            child: Row(
              children: [
                const Text("Mirroir:"),
                Checkbox(
                  value: mirror,
                  onChanged: (bool? value) {
                    setState(() {
                      mirror = value!;
                    });
                  },
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),

          //Echelle
          Container(
            child: Row(
              children: [
                const Text("Taille:"),
                Expanded(
                  child: Slider(
                    value: scale,
                    min: 0.1,
                    max: 2.5,
                    onChanged: (double value) {
                      setState(() {
                        scale = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),
        ]),
      ),
    );
  }
}
