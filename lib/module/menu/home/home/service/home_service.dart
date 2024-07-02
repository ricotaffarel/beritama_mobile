import 'dart:convert';

import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home/model/news_model_user.dart';
import 'package:dio/dio.dart';
import 'dart:core';
import 'package:http/http.dart' as http;

class HomeService {
  Future<HomeNewsModel> getNews() async {
    final session = SessionManager();
    await session.getToken();
    var response = await http.get(
        Uri.parse(
          "$url/news/getAll",
        ),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "bearer ${session.token}"
        });

    print("${response.body}");

    if (response.statusCode == 200) {
      final result = HomeNewsModel.fromJson(jsonDecode(response.body));

      print("object");
      print("service : $result");

      return result;
    } else {
      throw Exception('Failed to load news');
    }
  }

  Future<NewsModelByUser> getNewsByUser() async {
    final session = SessionManager();
    await session.getId();
    var response = await http.get(
      Uri.parse(
          "$url/url-req/get-by-user/b6881ea8-9676-4eed-8cc5-ddcbcb5f3800"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "bearer ${session.token}"
      },
    );

    print("${response.body}");

    if (response.statusCode == 200) {
      final result = NewsModelByUser.fromJson(jsonDecode(response.body));

      print("object");
      print("service : $result");

      return result;
    } else {
      throw Exception('Failed to load news');
    }
  }
}
