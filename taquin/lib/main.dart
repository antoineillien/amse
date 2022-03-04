import 'package:flutter/material.dart';
import 'package:amse_taquin/ex7.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Taquin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          itemExtent: 500,
          children: [
            Card(
              child: ListTile(
                title: Text('Jouer une partie'),
                trailing: Icon(Icons.play_arrow_rounded),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Exercice7(title: "Taquin"))),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 300,
                minHeight: 300,
                maxWidth: 300,
                maxHeight: 300,
              ),
              child: Image.network(
                  'https://raw.githubusercontent.com/antoineillien/ressources/main/david_lynch_mood.jpg'),
            ),
          ],
        ));
  }
}
