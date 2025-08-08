import 'package:flutter/material.dart';
import 'package:forntend/core/service/api.dart';
import 'package:forntend/model/datamodel.dart';
import 'package:forntend/provider/data_provider.dart';

class LoginViewModel extends ChangeNotifier{
   Future<void> login({
    required String email,
    required String password,
    required DataProvider dataProvider,
  }) async {
    DataModel? dataModel = await Api.login(email: email, password: password);
    if (dataModel != null) {
      dataProvider.setData(dataModel);
    }
  }
}
