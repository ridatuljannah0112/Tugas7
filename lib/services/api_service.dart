import 'dart:convert';
import 'package:aplikasi_berita_ridatuljannah_0009/models/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService_bisnis {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameter = {
      'country': 'id',
      'category': 'business',
      'apiKey': 'c86b0d07478c489e8ff9fbc2113ddea9'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameter);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
  }
}

class ApiService_sport {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameter = {
      'country': 'id',
      'category': 'sport',
      'apiKey': 'c86b0d07478c489e8ff9fbc2113ddea9'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameter);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
  }
}