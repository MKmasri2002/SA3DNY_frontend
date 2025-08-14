import 'package:flutter/material.dart';
import 'package:forntend/core/service/api.dart';
import 'package:forntend/model/usermodel.dart';
import 'package:forntend/provider/user_provider.dart';

class UpdateViewModel extends ChangeNotifier {
  bool isloading = false;
  Future<void> update({
    required String key,
    required String value,
    required UserProvider userProvider,
  }) async {
    isloading = true;

    notifyListeners();
    await Future.delayed(Duration(seconds: 1));
    UserModel? userModel = await Api.update(
      id: userProvider.userModel?.id ?? "",
      key: key,
      value: value,
      token: userProvider.token ?? "",
    );
    if (userModel != null) {
      userProvider.setData(userModel: userModel);
    }
    isloading = false;
    notifyListeners();
  }
}
