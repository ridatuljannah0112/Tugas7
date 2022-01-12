import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:aplikasi_berita_ridatuljannah_0009/main.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white[850],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/atul.jpg'),
          ),
          Text(
            "Ridatul Jannah",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.grey,
              fontSize: 25,
            ),
          ),
          Text(
            "PROGRAM STUDI SISTEM INFORMASI",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 23,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.grey[900],
              ),
              title: Text(
                "NPM : 19710009",
                style: TextStyle(color: Colors.grey[900]),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white[900],
              ),
              title: Text(
                "TTL : ALABIO, 01-12-2000",
                style: TextStyle(color: Colors.grey[900]),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                CupertinoIcons.house_alt,
                color: Colors.white[900],
              ),
              title: Text(
                "Alamat : Jl.Adhayaksa 3",
                style: TextStyle(color: Colors.grey[900]),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                CupertinoIcons.house_alt,
                color: Colors.white[900],
              ),
              title: Text(
                "Alamat : SI 5A REGULER PAGI BANJARMASIN",
                style: TextStyle(color: Colors.grey[900]),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }

