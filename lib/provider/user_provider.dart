import 'package:flutter/widgets.dart';
import 'package:forntend/model/usermodel.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _userModel;
  String? _token;

  UserModel? get userModel => _userModel;
  String? get token => _token;

  void setData({required UserModel userModel}) {
    _userModel = userModel;
    notifyListeners();
  }
  void setToken({required String token}) {
    _token = token;
    notifyListeners();
  }

  void logOut() {
    _userModel = null;
    notifyListeners();
  }
}
