import 'package:beritama/core.dart';
import 'package:beritama/module/menu/home/home_news_with_category/model/home_news_with_category.dart';
import 'package:dio/dio.dart';

class HomeNewsWithCategoryService {
  Future<List<HomeNewsWithCategoryModel>> getCategories() async {
    try {
      var response = await Dio().get(
        "$url/news-category/getAll",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      List<HomeNewsWithCategoryModel> result = (response.data["data"] as List)
          .map((item) => HomeNewsWithCategoryModel.fromJson(item))
          .toList();
      print("service HomeNewsWithCategoryService succss");

      return result;
    } catch (e) {
      print("service HomeNewsWithCategoryService error : $e");
      return [];
    }
  }
}
