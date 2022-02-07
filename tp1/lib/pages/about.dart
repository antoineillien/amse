import 'package:flutter/material.dart';

const primaryColor1 = Color.fromARGB(255, 147, 170, 165);
const primaryColor2 = Color.fromARGB(255, 202, 198, 189);
const primaryColor3 = Color.fromARGB(255, 38, 83, 105);

class Accueil3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor2,
        title: Text("More"),
      ),
      backgroundColor: primaryColor2,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: const Center(
                child: Text('Made by Antoine Illien with Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ))),
          ),
          Container(
            child: SizedBox(height: 30),
          ),
          Container(
            child: const Center(
                child: Text('antoine.illien@etu.imt-nord-europe.fr ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ))),
          ),
          Container(
            child: Image(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/antoineillien/ressources/main/profile_rounded.png')),
          ),
        ],
      ),
    );
  }
}
