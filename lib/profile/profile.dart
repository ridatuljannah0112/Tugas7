import 'package:flutter/material.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/main.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55.0,
              backgroundImage: AssetImage('assets/img/atul.jpg'),
              backgroundColor: Colors.greenAccent,
            ),
            SizedBox(
              height: 30.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueGrey,
              ),
            ),
            Text(
              "RIDATUL JANNAH",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                color: Colors.blueGrey,
                fontSize: 20.0,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "RIDATUL JANNAH",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "NPM : 19710009",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.white,
                ),
                title: Text(
                  "5A SI REG PAGI BJM",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: Text(
                  "+6285937061224",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.blueGrey,
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Jl. Adhaykasa 3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}