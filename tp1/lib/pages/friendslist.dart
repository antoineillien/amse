import 'package:flutter/material.dart';
import 'package:new_app/items/friends.dart';
import 'details.dart';

const primaryColor1 = Color.fromARGB(255, 147, 170, 165);
const primaryColor2 = Color.fromARGB(255, 202, 198, 189);
const primaryColor3 = Color.fromARGB(255, 38, 83, 105);

class Accueil2 extends StatelessWidget {
  @override
  final amis = List.generate(
    20,
    (i) => Ami(
      mainDataList[i],
      mainDetails[i],
      mainImages[i],
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor2,
        title: Text("Friends"),
      ),
      backgroundColor: primaryColor2,
      body: ListView.builder(
        itemCount: amis.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(amis[index].profile)),
            title: Text(amis[index].title),
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
