import 'package:aplikasi_berita_ridatuljannah_0009/Splashscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/components/customListTile.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/models/article_model.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/services/api_service.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/services/navigation.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/profile/profile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
        home: SplashScreen(),
        routes: <String, WidgetBuilder> {
        'HalamanPertama': (BuildContext context) => new HalamanPertama(),
        'bisnis': (BuildContext context) => new HomePage1(),
        'sport': (BuildContext context) => new HomePage2(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}


class HomePage1 extends StatefulWidget{
  @override
  berita_bisnis createState() => berita_bisnis();
}

class HomePage2 extends StatefulWidget{
  berita_sport createState() => berita_sport();
}

class berita_bisnis extends State<HomePage1> {
  ApiService_bisnis client = ApiService_bisnis();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Bisnis", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot)
{
          if (snapshot.hasData) {
            List<Article> article = snapshot.data;
            return ListView.builder(itemBuilder: (context, index) => 
                customListTile(article[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
},
      ),
      );
  }
}

class berita_sport extends State<HomePage2> {
  ApiService_sport client = ApiService_sport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Sport", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot)
{
          if (snapshot.hasData) {
            List<Article> article = snapshot.data;
            return ListView.builder(itemBuilder: (context, index) => 
                customListTile(article[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
},
      ),
      );
  }
}