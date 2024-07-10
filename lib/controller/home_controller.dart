import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class HomeController extends GetxController {

   bool isLike =true;

   void togle(value){
     isLike = !isLike;
     update();
   }

    List list =[];

   getData() async{
     final jsonfile = await rootBundle.loadString("assets/data.json");
     final data =jsonDecode(jsonfile);
     list =data['products'];

     update();

   }
   @override
  void onInit() {
    getData();
  }
   bool Like = true;
   int value = 3;

   void toggle() {
     Like = !Like;
     Like ? value++ : value--;
     update();
   }

   // void incre() {
   //   Like ? value++ : value--;
   // }
  }
