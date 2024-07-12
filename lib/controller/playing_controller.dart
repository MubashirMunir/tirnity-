import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PlayingController extends GetxController {
  TextEditingController tc = TextEditingController();
  List<String> comment = ['Yohoo man !'];
  List list = [];
  void getData() async {
    final data = await rootBundle.loadString("assets/data.json");
    var obj = jsonDecode(data);
    list = obj;
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  int value = 0;
  bool isLike = true;
  bool fav = true;
  void like() {
    isLike = !isLike;
    inc();
    update();
  }

  void favourite() {
    fav = !fav;
    update();
  }

  void inc() {
    if (value == 0) {
      value++;
    } else {
      value--;
    }
    update();
  }
}
