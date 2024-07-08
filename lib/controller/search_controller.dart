import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {
  TextEditingController tc = TextEditingController();

  List<String> data = [
    'Cars',
    'Bikes',
    'MotorCross',
    'Cycle',
    'Bicycle',
    'Bus',
    'Trains'
  ];
  List filtered = [];



  void searchList(String keyword) {
    List result = [];
    if (keyword.toString().isEmpty) {
      result = data;
    } else {
      result = data
          .where((element) =>
              element.toString().contains(keyword.toString().toLowerCase()))
          .toList();
    }
    result = data;
    update();
  }
  @override
  void onInit() {
    filtered = data;
    update();
  }

}
