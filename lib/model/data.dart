import 'package:forntend/model/user.dart';

class Data {
  String msg;
  String token;
  User user;

  Data({required this.msg, required this.token, required this.user});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      msg: json['msg'] ?? "",
      token: json['token'] ?? "",
      user: json['user'] != null
          ? User.fromJson(json['user'])
          : User(
              id: '',
              fullName: '',
              phoneNumber: '',
              email: '',
              location: '',
              password: '',
              userName: '',
              role: '',
            ),
    );
  }
}
