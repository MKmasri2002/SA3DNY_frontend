import 'package:flutter/material.dart';
import 'package:forntend/core/service/api.dart';
import 'package:forntend/model/usermodel.dart';
import 'package:forntend/provider/user_provider.dart';

class SignUpViewModel extends ChangeNotifier {
  bool isLoading = false;
  Future<void> signUp({
    required String name,
    required String phone,
    required String email,
    required String location,
    required String password,
    required UserProvider userProvider,
  }) async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 1));
    UserModel? userModel = await Api.signUp(
      name: name,
      phone: phone,
      email: email,
      location: location,
      password: password, userProvider: userProvider,
    );

    if (userModel != null) {
      userProvider.setData(userModel: userModel);
    }

    isLoading = false;
    notifyListeners();
  }
}
