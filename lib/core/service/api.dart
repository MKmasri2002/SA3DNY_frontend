import 'dart:convert';

import 'package:forntend/model/datamodel.dart';
import 'package:http/http.dart' as http;
import 'api_string.dart';

class Api {
  static Future<DataModel?> login({required email, required password}) async {
    final url = Uri.parse(ApiString.baseURl + ApiString.login);
    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "Application/Json"},
        body: jsonEncode({"userName": email, "password": password}),
      );
      if (response.statusCode == 200) {
        print("successful login");
        return DataModel.fromJson(jsonDecode(response.body));
      } else {
        print(response.statusCode.toString());
      }
    } catch (e) {
      print("error mk :" + e.toString());
    }
    return null;
  }
}
