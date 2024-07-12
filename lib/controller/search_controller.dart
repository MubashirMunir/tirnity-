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


  List filtered = [];
  @override
 // search filter for hardcoded data
  // void searchList(String word) {
  //     filtered = data
  //         .where((e) =>
  //         e.toLowerCase().contains(word.toLowerCase()))
  //         .toList();
  //     update();
  //   }

     getData()async{
    final jsonlist= await rootBundle.loadString("assets/song.json");
    final decoded =jsonDecode(jsonlist);
    list =decoded;
    filtered=list;
    }
 //first initialize widget getData called
  void onInit() {
    getData();
  }

  List list =[];
    void searchFromJson(String val){
       if(val.isEmpty){
         filtered = list;
         update();
       }else if(val.isNotEmpty){
         filtered=list.where((element)=> element['title'].toString().toLowerCase().contains(val.toString().toLowerCase())).toList();

    }
       else{       filtered=list.where((element)=> element['artist'].toString().toLowerCase().contains(val.toString().toLowerCase())).toList();
       }
       update();
    }
  }
