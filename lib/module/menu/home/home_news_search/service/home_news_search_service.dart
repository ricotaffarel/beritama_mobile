import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home_news_search/model/home_news_search_model.dart';
import 'package:dio/dio.dart';

class HomeNewsSearchService {
  Future<List<HomeNewsSearchModel>> searchData(String search) async {
    try {
      var response = await Dio().get(
        "$url/news/search?news_title=$search&news_description=$search&newsCategory=$search",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      List<HomeNewsSearchModel> result = (response.data["data"] as List)
          .map((item) => HomeNewsSearchModel.fromJson(item))
          .toList();
      print("service HomeNewsSearchService success ");

      return result;
    } catch (e) {
      print("service HomeNewsSearchService error : $e");
      return [];
    }
  }
}
