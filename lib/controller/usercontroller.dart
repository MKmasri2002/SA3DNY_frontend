import 'dart:convert';
import 'package:forntend/model/data.dart';
import 'package:forntend/model/user.dart';
import 'package:http/http.dart' as http;

class UserController {
  static User user = User(
    fullName: "",
    id: '',
    phoneNumber: '',
    email: '',
    location: '',
    password: '',
    userName: '',
    role: '',
  );

  static String baseURI = "http://10.0.2.2:5000/SA3DNY/user/";

  static Future<void> login({required email, required password}) async {
    final String _email = email;
    final String _password = password;

    final url = Uri.parse("${baseURI}login");

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'userName': _email.trim(),
          'password': _password.trim(),
        }),
      );

      final data = Data.fromJson(jsonDecode(response.body));
      if (response.statusCode == 200) {
        print(data.msg);
        user = data.user;
      } else {
        print('wrong email or password');
      }
    } catch (e) {
      print('catch : ' + e.toString());
    }
  }


  static Future<void> signUp({
    required String FullName,
    required String phone,
    required String email,
    required String location,
    required String username,
    required String password,
  }) async {
    final _FullName = FullName;
    final _phone = phone;
    final _email = email;
    final _location = location;
    final _username = username;
    final _password = password;
    final url = Uri.parse("${baseURI}addUser");
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "fullName": _FullName,
          "phoneNumber": _phone,
          "email": _email,
          "location": _location,
          "password": _password,
          "userName": _username
        }),
      );

      final data = Data.fromJson(jsonDecode(response.body));
      if (response.statusCode == 200) {
        user = data.user;
      } else {
        print('somthing erorr');
      }
    } catch (e) {
      print("cath"+e.toString());
    }
  }
}
