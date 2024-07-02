import 'package:beritama/core.dart';
import 'package:dio/dio.dart';

class RegisterService {
  Future<bool> registerService(
      {required String email,
      required String password,
      required String name}) async {
    try {
      var response = await Dio().post(
        "$url/users/non-auth/create-user",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "name": name,
          "email": email,
          "password": password,
          "role": "USER_GENERAL"
        },
      );
      Map obj = response.data;
      print("service : $obj");
      return true;
    } catch (e) {
      print("service error : $e");

      return false;
    }
  }
}
