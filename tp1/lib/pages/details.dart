import 'package:flutter/material.dart';
import 'friendslist.dart';
import 'package:new_app/items/friends.dart';

const primaryColor4 = Color.fromARGB(255, 143, 186, 158);

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.ami}) : super(key: key);

  final Ami ami;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor4,
      appBar: AppBar(
        title: Text(ami.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: Text(
              ami.description,
            ),
          ),
          Container(
            child: SizedBox(height: 30),
          ),
          Container(
            child: const Text(
              'We met on :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              ami.place,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: SizedBox(height: 30),
          ),
          Container(
            child: Image(image: NetworkImage(ami.profile)),
          ),
        ],
      ),
    );
  }
}

//SizedBox(height: 10),
