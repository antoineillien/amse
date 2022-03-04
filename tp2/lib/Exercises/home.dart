import 'package:flutter/material.dart';
import 'Ex2.dart';
import 'Ex4.dart';
import 'Ex5_1.dart';
import 'Ex5_2.dart';
import 'Ex5_3.dart';

class ListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
      ),
      body: Container(
        child: ListView(
          children: const [
            MenuTile(title: " Ex1 : Afficher une image ", page: Ex1()),
            MenuTile(title: " Ex2 : Transformer une image ", page: Exercice2()),
            MenuTile(title: " Ex4 : Affichage d'une tuile", page: Exercice4()),
            MenuTile(
                title: " Ex5 : Génération du plateau de tuile ",
                page: Exercice5a()),
            MenuTile(
                title: " Ex5.2 : Plateau de tuiles issues d'une même image",
                page: Exercice5b()),
            MenuTile(
                title: " Ex5.3 : Configuration de la taille des tuiles",
                page: Exercice5c()),
          ],
        ),
      ),
    );
  }
}

class MenuTile<Exercice> extends StatelessWidget {
  const MenuTile({Key? key, required this.title, required this.page})
      : super(key: key);
  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          onTapMenuTile(context);
        },
        child: ListTile(
          title: Text(title),
        ),
      ),
    );
  }

  void onTapMenuTile(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return page;
        },
      ),
    );
  }
}

class Ex1 extends StatefulWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  State<Ex1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Ex1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Ex1 : Afficher une image")),
        body: Center(
          child: Image.network(
              'https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_mood.jpg'),
        ));
  }
}
