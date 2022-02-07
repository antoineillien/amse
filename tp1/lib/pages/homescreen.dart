import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'friendslist.dart';
import 'package:url_launcher/url_launcher.dart';

const primaryColor1 = Color.fromARGB(255, 147, 170, 165);
const primaryColor2 = Color.fromARGB(255, 202, 198, 189);
const primaryColor3 = Color.fromARGB(255, 38, 83, 105);

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const url = 'https://play.decentraland.org/';
  static final List<Widget> _widgetOptions = <Widget>[
    Accueil1(),
    Accueil2(),
    Accueil3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MetaLink'),
          backgroundColor: primaryColor1,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            launch(url);
            //  html.window.open('https://play.decentraland.org/', "_blank"); not working, raise a null safety issue, even with the good dependencies
          },
          label: const Text('Jump in the Metaverse !'),
          icon: const Icon(Icons.add_circle_outline_outlined),
          backgroundColor: Colors.blue,
        ));
  }
}
