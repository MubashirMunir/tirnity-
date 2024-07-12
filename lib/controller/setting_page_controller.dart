import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SettingsPageController extends GetxController{
  void onInit() {
    settings();
    super.onInit();
  }
   List list=[];
   List dataList=[];
   Future<void> settings() async{
      var data = await rootBundle.loadString("assets/settings.json");
     var decoded =jsonDecode(data);
     list=decoded["settings"];
     print(list);
    update();
   }
}
