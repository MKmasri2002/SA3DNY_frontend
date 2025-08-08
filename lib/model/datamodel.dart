import 'package:forntend/model/usermodel.dart';

class DataModel {
  String msg;
  String token;
  UserModel userModel;

  DataModel({required this.msg, required this.token, required this.userModel});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      msg: json['msg'] ?? "",
      token: json['token'] ?? "",
      userModel: json['user'] != null
          ? UserModel.fromJson(json['user'])
          : UserModel(
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
