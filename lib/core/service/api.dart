import 'dart:convert';
import 'package:forntend/model/usermodel.dart';
import 'package:forntend/provider/user_provider.dart';
import 'package:http/http.dart' as http;
import 'api_string.dart';

class Api {
  static Future<UserModel?> login({
    required String email,
    required String password,
    required UserProvider userProvider,
  }) async {
    final url = Uri.parse(ApiString.baseURl + ApiString.login);
    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "Application/Json"},
        body: jsonEncode({"email": email, "password": password}),
      );
      if (response.statusCode == 200) {
        print("successful login");
        final data = jsonDecode(response.body);
        userProvider.setToken(token: data["token"]);
        return UserModel.fromJson(data);
      }
      return null;
    } catch (e) {
      print("error mk :" + e.toString());
    }
    return null;
  }

  static Future<UserModel?> signUp({
    required String name,
    required String phone,
    required String email,
    required String location,
    required String password,
    required UserProvider userProvider,
  }) async {
    final url = Uri.parse(ApiString.baseURl + ApiString.signUp);
    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "Application/Json"},
        body: jsonEncode({
          "name": name,
          "phone": phone,
          "email": email,
          "location": location,
          "password": password,
        }),
      );
      if (response.statusCode == 200) {
        print("successfully create account");
        final data = jsonDecode(response.body);
        userProvider.setToken(token: data["token"]);
        return UserModel.fromJson(data);
      } else {
        print(response.statusCode.toString());
      }
    } catch (e) {
      print("error mk :" + e.toString());
    }
    return null;
  }

  static Future<UserModel?> update({
    required String id,
    required String  key,
    required String value,
    required String token,
  }) async {
    final url = Uri.parse(ApiString.baseURl + ApiString.update);
    try {
      final response = await http.patch(
        url,
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },

        body: jsonEncode({
          "id": id,
          key: value,
        }),
      );
      if (response.statusCode == 200) {
        print("successfully updated");
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        print("something error");
        return null;
      }
    } catch (e) {
      print("error mk :" + e.toString());
    }
    return null;
  }
}
