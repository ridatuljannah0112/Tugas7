import 'package:aplikasi_berita_ridatuljannah_0009/services/Splashscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/components/customListTile.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/models/article_model.dart';
import 'package:aplikasi_berita_ridatuljannah_0009/services/api_service.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
} 

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App", style: TextStyle(color: Colors.black)),
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