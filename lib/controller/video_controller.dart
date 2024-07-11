import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  List list = [];
  void getData() async {
    final data = await rootBundle.loadString("assets/data.json");
    var obj = jsonDecode(data);
    list = obj["product"];
    update();
  }

  void onInit() {
    getData();
    update();
  }
}
