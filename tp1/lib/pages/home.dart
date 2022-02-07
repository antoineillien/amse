import 'package:flutter/material.dart';

const primaryColor1 = Color.fromARGB(255, 147, 170, 165);
const primaryColor2 = Color.fromARGB(255, 202, 198, 189);
const primaryColor3 = Color.fromARGB(255, 38, 83, 105);

class Accueil1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: primaryColor2,
      ),
      backgroundColor: primaryColor3,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/antoineillien/ressources/main/metalink.jpeg'),
            fit: BoxFit.contain,
          ),
        ),
        child: null,
      ),
    );
  }
}
