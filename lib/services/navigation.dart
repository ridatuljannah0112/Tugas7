import 'package:flutter/material.dart';
import 'dart:async';
import 'package:aplikasi_berita_ridatuljannah_0009/main.dart';

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menu Berita"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.money,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'bisnis');
                  },
                  iconSize: 70.0,
                  ),
                  Text("Bisnis")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.sports, color: Colors.blueGrey),
                  onPressed: (){
                    Navigator.pushNamed(context, 'sport');
                  },
                  iconSize: 70.0,
                  ),
                  Text("Sport")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.account_tree_sharp, color: Colors.blueGrey),
                  onPressed: (){
                    Navigator.pushNamed(context, 'profile');
                  },
                  iconSize: 70.0,
                  ),
                  Text("Profile")
              ],
            ),
          ],
        ),
      ),
    );
  }
}