import 'package:flutter/material.dart';
import 'friendslist.dart';
import 'package:new_app/items/friends.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.ami}) : super(key: key);

  final Ami ami;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor2,
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
            child: Image(image: NetworkImage(ami.profile)),
          ),
        ],
      ),
    );
  }
}
