import 'package:flutter/material.dart';

import "dart:math" show pi;

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  _Exercice2State createState() => _Exercice2State();
}

class _Exercice2State extends State<Ex2> {
  // ignore: non_constant_identifier_names
  double rot_axis_X = 0;
  // ignore: non_constant_identifier_names
  double rot_axis_Z = 0;
  bool symetrie = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rotate / resize image")),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..scale(scale)
                ..rotateY(symetrie ? pi : 0)
                ..rotateX(rot_axis_X)
                ..rotateZ(rot_axis_Z),
              child: const Image(
                image: NetworkImage(
                    "https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_onset.jpeg"),
              ),
            ),
            padding: const EdgeInsets.all(10),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Container(
            child: Row(
              children: [
                const Text("Rotation selon l'axe X:"),
                Expanded(
                  child: Slider(
                    value: rot_axis_X,
                    min: -pi,
                    max: pi,
                    onChanged: (double value) {
                      setState(() {
                        rot_axis_X = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            child: Row(
              children: [
                const Text("Rotation selon l'axe Z:"),
                Expanded(
                  child: Slider(
                    value: rot_axis_Z,
                    min: -pi,
                    max: pi,
                    onChanged: (double value) {
                      setState(() {
                        rot_axis_Z = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            child: Row(
              children: [
                const Text("Symétrie :"),
                Checkbox(
                  value: symetrie,
                  onChanged: (bool? value) {
                    setState(() {
                      symetrie = value!;
                    });
                  },
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
          ),
          Container(
            child: Row(
              children: [
                const Text("Taille :"),
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
