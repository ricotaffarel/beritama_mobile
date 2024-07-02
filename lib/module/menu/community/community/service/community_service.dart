import 'package:beritama/core.dart';
import 'package:beritama/module/menu/community/community/models/community_model.dart';
import 'package:dio/dio.dart';

class CommunityService {
  final session = SessionManager();

  Future<List<CommunityModel>> getCommunity() async {
    await session.getToken();
    try {
      var response = await Dio().get(
        "$url/community",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "bearer ${session.token}"
          },
        ),
      );

      List<CommunityModel> result = (response.data['data'] as List)
          .map((e) => CommunityModel.fromJson(e))
          .toList();
      print("success fetch community");
      return result;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
