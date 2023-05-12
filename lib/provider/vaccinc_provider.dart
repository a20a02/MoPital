import 'package:flutter/material.dart';
import 'package:mopital_app/database/database_helper.dart';

class VaccincProvider extends ChangeNotifier {
  List<Map<String, dynamic>> vaccinces = [];

  void getData() async {
    vaccinces = await DataBase.getData();
    notifyListeners();
  }

  void deletData(int id) async {
    await DataBase.deleteData(id);
    vaccinces.removeWhere((element) => element['ID'] == id);
    notifyListeners();
  }
}
