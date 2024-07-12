import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
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
  bool IsFollow =true;
  String val ="Follow";
  String val1 ="Follow";

  List filtered = [];
  @override
  void onInit() {
    super.onInit();
    getData();
    filtered = list;
    update();
  }
  void searchList(String word) {
      filtered = data
          .where((e) =>
          e.toLowerCase().contains(word.toLowerCase()))
          .toList();
      update();
    }
    List list =[];
     getData()async{
    final jsonlist= await rootBundle.loadString("assets/data.json");
    final decoded =jsonDecode(jsonlist);
    list =decoded;
    update();
    }
    void follow(){
       IsFollow = !IsFollow;
       update();
    }
  }
