import 'package:beritama/core.dart';
import 'package:dio/dio.dart';

class LoginService {
  Future<bool> loginService(
      {required String email, required String password}) async {
    try {
      var response = await Dio().post(
        "$url/auth/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      LoginModel result = LoginModel.fromJson(response.data);
      await session.saveSessions(
          id: result.data.user.id, token: result.data.token);
      print("service : $result");
      return true;
    } catch (e) {
      print("service error : $e");
      return false;
    }
  }
}
