import 'dart:convert';

import 'package:forntend/model/datamodel.dart';
import 'package:http/http.dart' as http;
import 'api_string.dart';

class Api {
  static Future<DataModel?> login({required email, required password}) async {
    final url = Uri.parse(ApiString.baseURl + ApiString.login);
    final response = await http.post(
      url,
      headers: {"Content-Type": "Application/Json"},
      body: jsonEncode({"username": email, "password": password}),
    );
    if (response.statusCode == 200) {
      return DataModel.fromJson(jsonDecode(response.body));
    }
    return null;
  }
}
