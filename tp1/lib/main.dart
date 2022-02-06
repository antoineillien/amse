import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
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
        title: const Text('BottomNavigationBar Sample'),
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
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class Accueil1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil1"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://lh3.googleusercontent.com/8Zswj9nXSNCG2lgdcw20a3iNzzfoBb5b7gngk5nE06UYaU8h64_JihipMwF1hw7lKOOeJHPqBSCAc8wCUHq9MgcYgaGpRAlVAQIrCaU=s0'),
            fit: BoxFit.contain,
          ),
        ),
        child: null,
      ),
    );
  }
}

class Ami {
  final String title;
  final String description;

  const Ami(this.title, this.description);
}

List<String> mainDataList = [
  "Ami1",
  "Ami2",
  "Ami3",
  "Ami5",
  "Ami6",
  "Ami1",
  "Ami2",
  "Ami3",
  "Ami5",
  "Ami6",
  "Ami1",
  "Ami2",
  "Ami3",
  "Ami5",
  "Ami6",
  "Ami1",
  "Ami2",
  "Ami3",
  "Ami5",
  "Ami6"
];

List<String> mainDetails = [
  "Blade Runner 2049 details",
  "Akira details",
  "Goodfellas details",
  "The Green Knight details",
  "Macbeth details",
  "Blade Runner 2049 details",
  "Akira details",
  "Goodfellas details",
  "The Green Knight details",
  "Macbeth details"
      "Blade Runner 2049 details",
  "Akira details",
  "Goodfellas details",
  "The Green Knight details",
  "Macbeth details",
  "Blade Runner 2049 details",
  "Akira details",
  "Goodfellas details",
  "The Green Knight details",
  "Macbeth details",
  "Blade Runner 2049 details",
  "Akira details",
  "Goodfellas details",
  "The Green Knight details",
  "Macbeth details"
      "Blade Runner 2049 details",
  "Akira details",
  "Goodfellas details",
  "The Green Knight details",
  "Macbeth details"
];

class Accueil2 extends StatelessWidget {
  @override
  final amis = List.generate(
    20,
    (i) => Ami(
      mainDataList[i],
      mainDetails[i],
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil2"),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: amis.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/antoineillien/ressources/main/metalink.jpeg')),
            title: Text(amis[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(ami: amis[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Accueil3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil3"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/antoineillien/startup_namer2/master/lib/ether_metaverse.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: null,
      ),
    );
  }
}

class AmisScreen extends StatelessWidget {
  // Requiring the list of todos.
  const AmisScreen({Key? key, required this.amis}) : super(key: key);

  final List<Ami> amis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amis'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: amis.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(amis[index].title),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.ami}) : super(key: key);

  // Declare a field that holds the Todo.
  final Ami ami;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(ami.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(ami.description),
      ),
    );
  }
}
