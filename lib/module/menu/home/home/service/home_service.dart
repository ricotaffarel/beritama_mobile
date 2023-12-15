import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home/model/home_news_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeService {
  Future<List<HomeNewsModel>> getNews() async {
    try {
      var response = await Dio().get(
        "$url/news/getAll",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      debugPrint(response.data.toString());
      List<HomeNewsModel> result = (response.data["data"] as List)
          .map((item) => HomeNewsModel.fromJson(item))
          .toList();
      print("object");
      print("service : $result");

      return result;
    } catch (e) {
      print("service error : $e");
      return [];
    }
  }
}
