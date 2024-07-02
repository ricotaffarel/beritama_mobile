import 'dart:io';

import 'package:beritama/core.dart';
import 'package:dio/dio.dart';

class HomeNewsDetailService {
  Future debunking(
      {required String reason,
      required String envidenceLink,
      required String newsId,
      required String userId,
      required File image}) async {
    FormData formData = FormData.fromMap({
      "reason": reason,
      "evidenceLinks": envidenceLink,
      "newsId": newsId,
      "userId": "b6881ea8-9676-4eed-8cc5-ddcbcb5f3800",
      "file": await MultipartFile.fromFile(image.path,
          filename: image.path.split('/').last),
    });

    final session = SessionManager();
    await session.getToken();

    try {
      var response = await Dio().post("$url/debunking/createOrUpdate",
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "Authorization": "bearer ${session.token}"
            },
          ),
          data: formData);
      print(response.data);
      return true;
    } catch (e) {
      print("error send debunking : $e");
      return false;
    }
  }
}
