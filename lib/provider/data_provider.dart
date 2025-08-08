import 'package:flutter/widgets.dart';
import 'package:forntend/model/datamodel.dart';

class DataProvider extends ChangeNotifier {
  DataModel? _dataModel;

  DataModel? get dataModel => _dataModel;
  void setData(DataModel dataModel) {
    _dataModel = dataModel;
    notifyListeners();
  }

  void logOut() {
    _dataModel = null;
    notifyListeners();
  }
}
